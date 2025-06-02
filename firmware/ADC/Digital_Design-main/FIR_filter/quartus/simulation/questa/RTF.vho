-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "03/06/2025 10:51:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RTF IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	X : IN std_logic_vector(9 DOWNTO 0);
	CLKO : BUFFER std_logic;
	TRI : IN std_logic;
	CS : BUFFER std_logic;
	SCLK : BUFFER std_logic;
	MOSI : BUFFER std_logic
	);
END RTF;

-- Design Ports Information
-- CLKO	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRI	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RTF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_X : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLKO : std_logic;
SIGNAL ww_TRI : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~16\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[0]~6_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \sc2|sc0|state~q\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~0_combout\ : std_logic;
SIGNAL \TRI~input_o\ : std_logic;
SIGNAL \sc4|Mux7~0_combout\ : std_logic;
SIGNAL \sc4|Mux3~0_combout\ : std_logic;
SIGNAL \sc4|Mux5~0_combout\ : std_logic;
SIGNAL \sc6|qp[0]~12_combout\ : std_logic;
SIGNAL \sc6|qp[9]~32_combout\ : std_logic;
SIGNAL \sc6|qp[0]~13\ : std_logic;
SIGNAL \sc6|qp[1]~14_combout\ : std_logic;
SIGNAL \sc6|qp[1]~15\ : std_logic;
SIGNAL \sc6|qp[2]~16_combout\ : std_logic;
SIGNAL \sc6|qp[2]~17\ : std_logic;
SIGNAL \sc6|qp[3]~18_combout\ : std_logic;
SIGNAL \sc6|qp[3]~19\ : std_logic;
SIGNAL \sc6|qp[4]~20_combout\ : std_logic;
SIGNAL \sc6|qp[4]~21\ : std_logic;
SIGNAL \sc6|qp[5]~22_combout\ : std_logic;
SIGNAL \sc6|qp[5]~23\ : std_logic;
SIGNAL \sc6|qp[6]~24_combout\ : std_logic;
SIGNAL \sc6|qp[6]~25\ : std_logic;
SIGNAL \sc6|qp[7]~26_combout\ : std_logic;
SIGNAL \sc6|Equal0~1_combout\ : std_logic;
SIGNAL \sc6|Equal0~0_combout\ : std_logic;
SIGNAL \sc6|qp[7]~27\ : std_logic;
SIGNAL \sc6|qp[8]~28_combout\ : std_logic;
SIGNAL \sc6|qp[8]~29\ : std_logic;
SIGNAL \sc6|qp[9]~30_combout\ : std_logic;
SIGNAL \sc6|Equal0~2_combout\ : std_logic;
SIGNAL \sc4|Mux5~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux3~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux4~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux5~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux4~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~4_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux3~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~6_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux2~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~8_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux1~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~10_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Equal0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux3~3_combout\ : std_logic;
SIGNAL \sc4|Mux6~0_combout\ : std_logic;
SIGNAL \sc4|Mux7~1_combout\ : std_logic;
SIGNAL \sc4|Mux7~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux4~0_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[5]~16_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[0]~7\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[1]~8_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[1]~9\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[2]~10_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[2]~11\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[3]~12_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[3]~13\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[4]~14_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[4]~15\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[5]~17_combout\ : std_logic;
SIGNAL \sc2|sc0|Equal0~0_combout\ : std_logic;
SIGNAL \sc2|sc0|Equal0~1_combout\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~0_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~0_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~1_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~q\ : std_logic;
SIGNAL \sc4|Mux6~2_combout\ : std_logic;
SIGNAL \sc4|Mux6~1_combout\ : std_logic;
SIGNAL \sc4|Mux6~3_combout\ : std_logic;
SIGNAL \sc4|Mux4~0_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~1_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~q\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~0_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~1_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~2_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~q\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[19]~43_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \sc0|sc10|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc11|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc16|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc22|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc23|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc24|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc30|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~8_combout\ : std_logic;
SIGNAL \sc0|sc34|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~9_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc41|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~18_combout\ : std_logic;
SIGNAL \sc0|sc50|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~33_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \sc0|sc9|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc13|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc16|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc17|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc19|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~24_combout\ : std_logic;
SIGNAL \sc0|sc20|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~32_combout\ : std_logic;
SIGNAL \sc0|sc21|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc22|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc31|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~3_combout\ : std_logic;
SIGNAL \sc0|sc36|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~9_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~18_combout\ : std_logic;
SIGNAL \sc0|sc46|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc47|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~33_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \sc0|sc4|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc6|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc8|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc9|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc17|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc24|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc30|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~8_combout\ : std_logic;
SIGNAL \sc0|sc34|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~3_combout\ : std_logic;
SIGNAL \sc0|sc36|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~9_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc39|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc41|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~18_combout\ : std_logic;
SIGNAL \sc0|sc46|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc50|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~33_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \sc0|sc9|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc15|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~28_combout\ : std_logic;
SIGNAL \sc0|sc19|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc20|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~33_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~34_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~35_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~36_combout\ : std_logic;
SIGNAL \sc0|sc21|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc28|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc31|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc32|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc40|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~22_combout\ : std_logic;
SIGNAL \sc0|sc47|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~18_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~9_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~37_combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \sc0|sc4|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc5|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc9|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc10|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc11|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc13|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc15|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc17|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc20|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc21|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc22|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc24|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc30|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc34|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc41|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~18_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~11_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~9_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~33_combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \sc0|sc11|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc13|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~29_combout\ : std_logic;
SIGNAL \sc0|sc17|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc18|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~32_combout\ : std_logic;
SIGNAL \sc0|sc22|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc27|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc28|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc31|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc32|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc36|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~18_combout\ : std_logic;
SIGNAL \sc0|sc44|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc45|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc47|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~13_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~9_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~33_combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \sc0|sc4|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc7|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc9|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~29_combout\ : std_logic;
SIGNAL \sc0|sc12|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~22_combout\ : std_logic;
SIGNAL \sc0|sc14|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc16|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc19|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~32_combout\ : std_logic;
SIGNAL \sc0|sc24|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc30|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~8_combout\ : std_logic;
SIGNAL \sc0|sc32|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc34|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~1_combout\ : std_logic;
SIGNAL \sc0|sc36|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~9_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~18_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~13_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~33_combout\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \sc0|sc15|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc16|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc18|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc24|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc27|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc28|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc32|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc39|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc40|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc44|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc47|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~18_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~13_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~9_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~33_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \sc0|sc10|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc11|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc13|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~24_combout\ : std_logic;
SIGNAL \sc0|sc20|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~32_combout\ : std_logic;
SIGNAL \sc0|sc23|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc30|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~3_combout\ : std_logic;
SIGNAL \sc0|sc34|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~9_combout\ : std_logic;
SIGNAL \sc0|sc41|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~18_combout\ : std_logic;
SIGNAL \sc0|sc46|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc50|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~33_combout\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \sc0|sc4|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc7|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc11|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc12|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc13|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc16|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc17|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc20|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc21|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc22|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc26|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc28|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc32|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc36|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc37|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc38|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc40|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc42|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc44|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc48|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~10_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~11_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~17_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~18_combout\ : std_logic;
SIGNAL \sc0|sc51|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~14_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~15_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~12_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~13_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~16_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~19_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~7_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~8_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~2_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~3_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~4_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~5_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~6_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~9_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~20_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~21_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~22_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~28_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~29_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~23_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~24_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~25_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~26_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~27_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~30_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~31_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~32_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~33_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux7~5_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux6~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux6~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux6~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux6~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux6~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux5~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux5~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux5~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux5~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux5~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux4~5_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux3~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux3~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux3~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux3~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux3~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux2~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux2~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux2~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux2~3_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux2~4_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux1~1_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux1~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux1~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux0~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~16\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[0]~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[0]~62_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[0]~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[1]~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[1]~61_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[1]~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[2]~4_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[2]~60_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[2]~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[3]~6_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[3]~59_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[3]~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[4]~8_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[4]~58_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[4]~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[5]~10_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[5]~57_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[5]~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[6]~12_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[6]~56_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[6]~13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[7]~14_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[7]~55_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[7]~15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[8]~16_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[8]~54_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[8]~17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[9]~18_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[9]~53_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[9]~19\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[10]~20_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[10]~52_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[10]~21\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[11]~22_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[11]~51_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[11]~23\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[12]~24_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[12]~50_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[12]~25\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[13]~26_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[13]~49_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[13]~27\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[14]~28_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[14]~48_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[14]~29\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[15]~30_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[15]~47_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[15]~31\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[16]~32_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[16]~46_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[16]~33\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[17]~34_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[17]~45_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[17]~35\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[18]~36_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[18]~44_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[18]~37\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[19]~38_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer[0]~24_combout\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~0_combout\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~_wirecell_combout\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~q\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~1_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~0_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~1_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~2_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer[23]~1_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~23_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~22_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~21_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~20_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~19_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~18_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~17_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~16_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~15_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~14_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~13_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~12_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~11_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~10_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[20]~42_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[19]~39\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|S[20]~40_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~9_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~8_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~7_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~6_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~5_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~4_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~3_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~2_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~0_combout\ : std_logic;
SIGNAL \sc2|sc0|mosi~0_combout\ : std_logic;
SIGNAL \sc2|sc0|mosi~q\ : std_logic;
SIGNAL \sc0|sc49|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc6|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc5|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_5|qp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc45|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc2|sc0|txBuffer\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \sc0|sc13|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc0|sc51|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc2|sc0|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc46|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc4|qp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sc0|sc52|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_6|qp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc0|sc16|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc2|sc0|last_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_4|qp\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \sc0|sc14|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_3|qp\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \sc0|sc33|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc27|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc35|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc25|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc24|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc30|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc32|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc22|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc34|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc28|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc36|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc26|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc23|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc29|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc31|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc21|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc40|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc43|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc44|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc39|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc50|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc48|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc47|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc38|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc41|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc42|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc37|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc1|c0|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc3|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc4|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc11|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc8|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc12|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc7|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc17|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc18|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc19|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc20|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc15|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc9|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc6|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc10|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \sc2|sc0|ALT_INV_INT_ss_n~q\ : std_logic;
SIGNAL \sc2|sc0|ALT_INV_state~q\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_X <= X;
CLKO <= ww_CLKO;
ww_TRI <= TRI;
CS <= ww_CS;
SCLK <= ww_SCLK;
MOSI <= ww_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sc5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\sc5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~16\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~15\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~14\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~13\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~0\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\sc0|sc0|Mux0~33_combout\ & \sc0|sc0|Mux1~33_combout\ & \sc0|sc0|Mux2~33_combout\ & \sc0|sc0|Mux3~33_combout\ & \sc0|sc0|Mux4~33_combout\ & \sc0|sc0|Mux5~33_combout\ & 
\sc0|sc0|Mux6~37_combout\ & \sc0|sc0|Mux7~33_combout\ & \sc0|sc0|Mux8~33_combout\ & \sc0|sc0|Mux9~33_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \sc0|sc1|Mux0~1_combout\ & \sc0|sc1|Mux1~2_combout\ & \sc0|sc1|Mux2~4_combout\ & \sc0|sc1|Mux3~4_combout\ & \sc0|sc1|Mux4~5_combout\ & \sc0|sc1|Mux5~4_combout\ & 
\sc0|sc1|Mux6~4_combout\ & \sc0|sc1|Mux7~5_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc5|altpll_component|auto_generated|wire_pll1_clk\(0));
\sc4|ALT_INV_Mux4~0_combout\ <= NOT \sc4|Mux4~0_combout\;
\sc2|sc0|ALT_INV_INT_ss_n~q\ <= NOT \sc2|sc0|INT_ss_n~q\;
\sc2|sc0|ALT_INV_state~q\ <= NOT \sc2|sc0|state~q\;
\sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;

-- Location: IOOBUF_X65_Y0_N16
\CLKO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc4|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_CLKO);

-- Location: IOOBUF_X60_Y0_N2
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|ALT_INV_INT_ss_n~q\,
	devoe => ww_devoe,
	o => ww_CS);

-- Location: IOOBUF_X109_Y0_N2
\SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|INT_sclk~q\,
	devoe => ww_devoe,
	o => ww_SCLK);

-- Location: IOOBUF_X85_Y0_N2
\MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|mosi~q\,
	devoe => ww_devoe,
	o => ww_MOSI);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_1
\sc5|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \sc5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \sc5|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \sc5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \sc5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X79_Y34_N10
\sc2|sc0|clk_toggles[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[0]~6_combout\ = \sc2|sc0|clk_toggles\(0) $ (VCC)
-- \sc2|sc0|clk_toggles[0]~7\ = CARRY(\sc2|sc0|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(0),
	datad => VCC,
	combout => \sc2|sc0|clk_toggles[0]~6_combout\,
	cout => \sc2|sc0|clk_toggles[0]~7\);

-- Location: IOIBUF_X115_Y40_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X80_Y34_N27
\sc2|sc0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|busy~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|state~q\);

-- Location: LCCOMB_X79_Y34_N28
\sc2|sc0|INT_ss_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_ss_n~0_combout\ = (\sc2|sc0|Equal0~1_combout\) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|state~q\,
	datad => \sc2|sc0|Equal0~1_combout\,
	combout => \sc2|sc0|INT_ss_n~0_combout\);

-- Location: IOIBUF_X100_Y0_N15
\TRI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRI,
	o => \TRI~input_o\);

-- Location: LCCOMB_X80_Y36_N12
\sc4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux7~0_combout\ = (\sc4|qp\(1) & (\sc4|qp\(0))) # (!\sc4|qp\(1) & (!\sc4|qp\(0) & \TRI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|qp\(0),
	datac => \TRI~input_o\,
	combout => \sc4|Mux7~0_combout\);

-- Location: LCCOMB_X80_Y36_N30
\sc4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux3~0_combout\ = (\sc4|qp\(1) & (\sc4|qp\(0) & !\sc4|qp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datac => \sc4|qp\(0),
	datad => \sc4|qp\(2),
	combout => \sc4|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y36_N28
\sc4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux5~0_combout\ = ((!\sc4|qp\(0)) # (!\sc2|sc0|busy~q\)) # (!\sc4|qp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc2|sc0|busy~q\,
	datac => \sc4|qp\(0),
	combout => \sc4|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y37_N6
\sc6|qp[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[0]~12_combout\ = \sc6|qp\(0) $ (VCC)
-- \sc6|qp[0]~13\ = CARRY(\sc6|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(0),
	datad => VCC,
	combout => \sc6|qp[0]~12_combout\,
	cout => \sc6|qp[0]~13\);

-- Location: LCCOMB_X80_Y36_N24
\sc6|qp[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[9]~32_combout\ = ((\sc4|qp\(2)) # ((!\sc6|Equal0~2_combout\) # (!\sc4|qp\(0)))) # (!\sc4|qp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|qp\(2),
	datac => \sc4|qp\(0),
	datad => \sc6|Equal0~2_combout\,
	combout => \sc6|qp[9]~32_combout\);

-- Location: FF_X81_Y37_N7
\sc6|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[0]~12_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(0));

-- Location: LCCOMB_X81_Y37_N8
\sc6|qp[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[1]~14_combout\ = (\sc6|qp\(1) & (!\sc6|qp[0]~13\)) # (!\sc6|qp\(1) & ((\sc6|qp[0]~13\) # (GND)))
-- \sc6|qp[1]~15\ = CARRY((!\sc6|qp[0]~13\) # (!\sc6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc6|qp\(1),
	datad => VCC,
	cin => \sc6|qp[0]~13\,
	combout => \sc6|qp[1]~14_combout\,
	cout => \sc6|qp[1]~15\);

-- Location: FF_X81_Y37_N9
\sc6|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[1]~14_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(1));

-- Location: LCCOMB_X81_Y37_N10
\sc6|qp[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[2]~16_combout\ = (\sc6|qp\(2) & (\sc6|qp[1]~15\ $ (GND))) # (!\sc6|qp\(2) & (!\sc6|qp[1]~15\ & VCC))
-- \sc6|qp[2]~17\ = CARRY((\sc6|qp\(2) & !\sc6|qp[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(2),
	datad => VCC,
	cin => \sc6|qp[1]~15\,
	combout => \sc6|qp[2]~16_combout\,
	cout => \sc6|qp[2]~17\);

-- Location: FF_X81_Y37_N11
\sc6|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[2]~16_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(2));

-- Location: LCCOMB_X81_Y37_N12
\sc6|qp[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[3]~18_combout\ = (\sc6|qp\(3) & (!\sc6|qp[2]~17\)) # (!\sc6|qp\(3) & ((\sc6|qp[2]~17\) # (GND)))
-- \sc6|qp[3]~19\ = CARRY((!\sc6|qp[2]~17\) # (!\sc6|qp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(3),
	datad => VCC,
	cin => \sc6|qp[2]~17\,
	combout => \sc6|qp[3]~18_combout\,
	cout => \sc6|qp[3]~19\);

-- Location: FF_X81_Y37_N13
\sc6|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[3]~18_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(3));

-- Location: LCCOMB_X81_Y37_N14
\sc6|qp[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[4]~20_combout\ = (\sc6|qp\(4) & (\sc6|qp[3]~19\ $ (GND))) # (!\sc6|qp\(4) & (!\sc6|qp[3]~19\ & VCC))
-- \sc6|qp[4]~21\ = CARRY((\sc6|qp\(4) & !\sc6|qp[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc6|qp\(4),
	datad => VCC,
	cin => \sc6|qp[3]~19\,
	combout => \sc6|qp[4]~20_combout\,
	cout => \sc6|qp[4]~21\);

-- Location: FF_X81_Y37_N15
\sc6|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[4]~20_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(4));

-- Location: LCCOMB_X81_Y37_N16
\sc6|qp[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[5]~22_combout\ = (\sc6|qp\(5) & (!\sc6|qp[4]~21\)) # (!\sc6|qp\(5) & ((\sc6|qp[4]~21\) # (GND)))
-- \sc6|qp[5]~23\ = CARRY((!\sc6|qp[4]~21\) # (!\sc6|qp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc6|qp\(5),
	datad => VCC,
	cin => \sc6|qp[4]~21\,
	combout => \sc6|qp[5]~22_combout\,
	cout => \sc6|qp[5]~23\);

-- Location: FF_X81_Y37_N17
\sc6|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[5]~22_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(5));

-- Location: LCCOMB_X81_Y37_N18
\sc6|qp[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[6]~24_combout\ = (\sc6|qp\(6) & (\sc6|qp[5]~23\ $ (GND))) # (!\sc6|qp\(6) & (!\sc6|qp[5]~23\ & VCC))
-- \sc6|qp[6]~25\ = CARRY((\sc6|qp\(6) & !\sc6|qp[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc6|qp\(6),
	datad => VCC,
	cin => \sc6|qp[5]~23\,
	combout => \sc6|qp[6]~24_combout\,
	cout => \sc6|qp[6]~25\);

-- Location: FF_X81_Y37_N19
\sc6|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[6]~24_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(6));

-- Location: LCCOMB_X81_Y37_N20
\sc6|qp[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[7]~26_combout\ = (\sc6|qp\(7) & (!\sc6|qp[6]~25\)) # (!\sc6|qp\(7) & ((\sc6|qp[6]~25\) # (GND)))
-- \sc6|qp[7]~27\ = CARRY((!\sc6|qp[6]~25\) # (!\sc6|qp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc6|qp\(7),
	datad => VCC,
	cin => \sc6|qp[6]~25\,
	combout => \sc6|qp[7]~26_combout\,
	cout => \sc6|qp[7]~27\);

-- Location: FF_X81_Y37_N21
\sc6|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[7]~26_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(7));

-- Location: LCCOMB_X81_Y37_N26
\sc6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|Equal0~1_combout\ = (((\sc6|qp\(7)) # (!\sc6|qp\(4))) # (!\sc6|qp\(5))) # (!\sc6|qp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(6),
	datab => \sc6|qp\(5),
	datac => \sc6|qp\(4),
	datad => \sc6|qp\(7),
	combout => \sc6|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y37_N4
\sc6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|Equal0~0_combout\ = (((\sc6|qp\(1)) # (!\sc6|qp\(0))) # (!\sc6|qp\(3))) # (!\sc6|qp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(2),
	datab => \sc6|qp\(3),
	datac => \sc6|qp\(1),
	datad => \sc6|qp\(0),
	combout => \sc6|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y37_N22
\sc6|qp[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[8]~28_combout\ = (\sc6|qp\(8) & (\sc6|qp[7]~27\ $ (GND))) # (!\sc6|qp\(8) & (!\sc6|qp[7]~27\ & VCC))
-- \sc6|qp[8]~29\ = CARRY((\sc6|qp\(8) & !\sc6|qp[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|qp\(8),
	datad => VCC,
	cin => \sc6|qp[7]~27\,
	combout => \sc6|qp[8]~28_combout\,
	cout => \sc6|qp[8]~29\);

-- Location: FF_X81_Y37_N23
\sc6|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[8]~28_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(8));

-- Location: LCCOMB_X81_Y37_N24
\sc6|qp[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|qp[9]~30_combout\ = \sc6|qp[8]~29\ $ (\sc6|qp\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sc6|qp\(9),
	cin => \sc6|qp[8]~29\,
	combout => \sc6|qp[9]~30_combout\);

-- Location: FF_X81_Y37_N25
\sc6|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc6|qp[9]~30_combout\,
	clrn => \RST~input_o\,
	sclr => \sc6|qp[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc6|qp\(9));

-- Location: LCCOMB_X81_Y37_N28
\sc6|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc6|Equal0~2_combout\ = (\sc6|Equal0~1_combout\) # ((\sc6|Equal0~0_combout\) # ((!\sc6|qp\(9)) # (!\sc6|qp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc6|Equal0~1_combout\,
	datab => \sc6|Equal0~0_combout\,
	datac => \sc6|qp\(8),
	datad => \sc6|qp\(9),
	combout => \sc6|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y36_N20
\sc4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux5~1_combout\ = (\sc4|Mux3~0_combout\ & (((\sc4|Mux5~0_combout\ & \sc4|qp\(2))) # (!\sc6|Equal0~2_combout\))) # (!\sc4|Mux3~0_combout\ & (\sc4|Mux5~0_combout\ & (\sc4|qp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|Mux3~0_combout\,
	datab => \sc4|Mux5~0_combout\,
	datac => \sc4|qp\(2),
	datad => \sc6|Equal0~2_combout\,
	combout => \sc4|Mux5~1_combout\);

-- Location: FF_X80_Y36_N21
\sc4|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|Mux5~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(2));

-- Location: LCCOMB_X70_Y38_N20
\sc0|sc2|Bloque_5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~0_combout\ = \sc0|sc2|Bloque_5|qp\(0) $ (VCC)
-- \sc0|sc2|Bloque_5|Add0~1\ = CARRY(\sc0|sc2|Bloque_5|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datad => VCC,
	combout => \sc0|sc2|Bloque_5|Add0~0_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~1\);

-- Location: LCCOMB_X79_Y36_N18
\sc0|sc2|Bloque_6|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux3~2_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_6|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_6|Mux3~2_combout\);

-- Location: LCCOMB_X79_Y36_N12
\sc0|sc2|Bloque_6|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux4~1_combout\ = (\sc0|sc2|Bloque_6|Mux3~2_combout\ & (((\sc0|sc2|Bloque_5|Equal0~0_combout\)))) # (!\sc0|sc2|Bloque_6|Mux3~2_combout\ & (!\sc4|qp\(1) & (\sc0|sc2|Bloque_6|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc0|sc2|Bloque_6|Mux4~0_combout\,
	datac => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datad => \sc0|sc2|Bloque_6|Mux3~2_combout\,
	combout => \sc0|sc2|Bloque_6|Mux4~1_combout\);

-- Location: FF_X79_Y36_N13
\sc0|sc2|Bloque_6|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_6|Mux4~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_6|qp\(0));

-- Location: LCCOMB_X75_Y37_N0
\sc0|sc2|Bloque_5|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux5~2_combout\ = (\sc0|sc2|Bloque_5|Add0~0_combout\ & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|Add0~0_combout\,
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux5~2_combout\);

-- Location: FF_X75_Y37_N1
\sc0|sc2|Bloque_5|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux5~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(0));

-- Location: LCCOMB_X70_Y38_N22
\sc0|sc2|Bloque_5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|Add0~1\ & VCC)) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|Add0~1\))
-- \sc0|sc2|Bloque_5|Add0~3\ = CARRY((!\sc0|sc2|Bloque_5|qp\(1) & !\sc0|sc2|Bloque_5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~1\,
	combout => \sc0|sc2|Bloque_5|Add0~2_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~3\);

-- Location: LCCOMB_X75_Y37_N6
\sc0|sc2|Bloque_5|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux4~2_combout\ = (\sc0|sc2|Bloque_6|qp\(1)) # ((\sc0|sc2|Bloque_5|Add0~2_combout\) # (!\sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_5|Add0~2_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux4~2_combout\);

-- Location: FF_X75_Y37_N7
\sc0|sc2|Bloque_5|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux4~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(1));

-- Location: LCCOMB_X70_Y38_N24
\sc0|sc2|Bloque_5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~4_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((GND) # (!\sc0|sc2|Bloque_5|Add0~3\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|Add0~3\ $ (GND)))
-- \sc0|sc2|Bloque_5|Add0~5\ = CARRY((\sc0|sc2|Bloque_5|qp\(2)) # (!\sc0|sc2|Bloque_5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~3\,
	combout => \sc0|sc2|Bloque_5|Add0~4_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~5\);

-- Location: LCCOMB_X74_Y37_N12
\sc0|sc2|Bloque_5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux3~2_combout\ = (\sc0|sc2|Bloque_5|Add0~4_combout\ & (\sc0|sc2|Bloque_6|qp\(0) & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|Add0~4_combout\,
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_5|Mux3~2_combout\);

-- Location: FF_X74_Y37_N13
\sc0|sc2|Bloque_5|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux3~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(2));

-- Location: LCCOMB_X70_Y38_N26
\sc0|sc2|Bloque_5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~6_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|Add0~5\ & VCC)) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|Add0~5\))
-- \sc0|sc2|Bloque_5|Add0~7\ = CARRY((!\sc0|sc2|Bloque_5|qp\(3) & !\sc0|sc2|Bloque_5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~5\,
	combout => \sc0|sc2|Bloque_5|Add0~6_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~7\);

-- Location: LCCOMB_X75_Y37_N20
\sc0|sc2|Bloque_5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux2~2_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_5|Add0~6_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_5|Add0~6_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux2~2_combout\);

-- Location: FF_X75_Y37_N21
\sc0|sc2|Bloque_5|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux2~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(3));

-- Location: LCCOMB_X75_Y38_N10
\sc0|sc1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux0~0_combout\ = (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(2) & !\sc0|sc2|Bloque_5|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc1|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y38_N28
\sc0|sc2|Bloque_5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~8_combout\ = (\sc0|sc2|Bloque_5|qp\(4) & ((GND) # (!\sc0|sc2|Bloque_5|Add0~7\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc2|Bloque_5|Add0~7\ $ (GND)))
-- \sc0|sc2|Bloque_5|Add0~9\ = CARRY((\sc0|sc2|Bloque_5|qp\(4)) # (!\sc0|sc2|Bloque_5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~7\,
	combout => \sc0|sc2|Bloque_5|Add0~8_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~9\);

-- Location: LCCOMB_X75_Y38_N4
\sc0|sc2|Bloque_5|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux1~2_combout\ = (\sc0|sc2|Bloque_6|qp\(1)) # ((\sc0|sc2|Bloque_5|Add0~8_combout\) # (!\sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_5|Add0~8_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux1~2_combout\);

-- Location: FF_X75_Y38_N5
\sc0|sc2|Bloque_5|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux1~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(4));

-- Location: LCCOMB_X70_Y38_N30
\sc0|sc2|Bloque_5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~10_combout\ = \sc0|sc2|Bloque_5|Add0~9\ $ (!\sc0|sc2|Bloque_5|qp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc2|Bloque_5|qp\(5),
	cin => \sc0|sc2|Bloque_5|Add0~9\,
	combout => \sc0|sc2|Bloque_5|Add0~10_combout\);

-- Location: LCCOMB_X75_Y38_N30
\sc0|sc2|Bloque_5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux0~2_combout\ = (\sc0|sc2|Bloque_6|qp\(1)) # ((\sc0|sc2|Bloque_5|Add0~10_combout\) # (!\sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_5|Add0~10_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux0~2_combout\);

-- Location: FF_X75_Y38_N31
\sc0|sc2|Bloque_5|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(5));

-- Location: LCCOMB_X75_Y38_N28
\sc0|sc2|Bloque_5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Equal0~0_combout\ = ((\sc0|sc2|Bloque_5|qp\(4)) # ((\sc0|sc2|Bloque_5|qp\(5)) # (!\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc1|Mux0~0_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc2|Bloque_5|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y38_N12
\sc0|sc2|Bloque_6|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux3~3_combout\ = (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_6|Mux3~3_combout\);

-- Location: FF_X75_Y38_N13
\sc0|sc2|Bloque_6|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_6|Mux3~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_6|qp\(1));

-- Location: LCCOMB_X79_Y36_N24
\sc4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux6~0_combout\ = (\sc0|sc2|Bloque_6|qp\(1) & \sc4|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc4|qp\(0),
	combout => \sc4|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y36_N22
\sc4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux7~1_combout\ = (\sc4|qp\(1) & (((\sc4|Mux6~2_combout\) # (!\sc4|qp\(2))))) # (!\sc4|qp\(1) & (\sc4|Mux6~0_combout\ & (\sc4|qp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|Mux6~0_combout\,
	datac => \sc4|qp\(2),
	datad => \sc4|Mux6~2_combout\,
	combout => \sc4|Mux7~1_combout\);

-- Location: LCCOMB_X80_Y36_N4
\sc4|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux7~2_combout\ = (\sc4|Mux7~0_combout\ & (((!\sc4|qp\(2) & \sc6|Equal0~2_combout\)) # (!\sc4|Mux7~1_combout\))) # (!\sc4|Mux7~0_combout\ & (\sc4|qp\(2) $ ((\sc4|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|Mux7~0_combout\,
	datab => \sc4|qp\(2),
	datac => \sc4|Mux7~1_combout\,
	datad => \sc6|Equal0~2_combout\,
	combout => \sc4|Mux7~2_combout\);

-- Location: FF_X80_Y36_N5
\sc4|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|Mux7~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(0));

-- Location: LCCOMB_X79_Y36_N16
\sc0|sc2|Bloque_6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux4~0_combout\ = (!\sc4|qp\(0) & \sc4|qp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(0),
	datac => \sc4|qp\(2),
	combout => \sc0|sc2|Bloque_6|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y36_N2
\sc2|sc0|clk_toggles[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[5]~16_combout\ = (\RST~input_o\ & ((\sc2|sc0|state~q\) # ((\sc0|sc2|Bloque_6|Mux4~0_combout\ & \sc4|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sc0|sc2|Bloque_6|Mux4~0_combout\,
	datac => \sc2|sc0|state~q\,
	datad => \sc4|qp\(1),
	combout => \sc2|sc0|clk_toggles[5]~16_combout\);

-- Location: FF_X79_Y34_N11
\sc2|sc0|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[0]~6_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(0));

-- Location: LCCOMB_X79_Y34_N12
\sc2|sc0|clk_toggles[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[1]~8_combout\ = (\sc2|sc0|clk_toggles\(1) & (!\sc2|sc0|clk_toggles[0]~7\)) # (!\sc2|sc0|clk_toggles\(1) & ((\sc2|sc0|clk_toggles[0]~7\) # (GND)))
-- \sc2|sc0|clk_toggles[1]~9\ = CARRY((!\sc2|sc0|clk_toggles[0]~7\) # (!\sc2|sc0|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(1),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[0]~7\,
	combout => \sc2|sc0|clk_toggles[1]~8_combout\,
	cout => \sc2|sc0|clk_toggles[1]~9\);

-- Location: FF_X79_Y34_N13
\sc2|sc0|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[1]~8_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(1));

-- Location: LCCOMB_X79_Y34_N14
\sc2|sc0|clk_toggles[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[2]~10_combout\ = (\sc2|sc0|clk_toggles\(2) & (\sc2|sc0|clk_toggles[1]~9\ $ (GND))) # (!\sc2|sc0|clk_toggles\(2) & (!\sc2|sc0|clk_toggles[1]~9\ & VCC))
-- \sc2|sc0|clk_toggles[2]~11\ = CARRY((\sc2|sc0|clk_toggles\(2) & !\sc2|sc0|clk_toggles[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(2),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[1]~9\,
	combout => \sc2|sc0|clk_toggles[2]~10_combout\,
	cout => \sc2|sc0|clk_toggles[2]~11\);

-- Location: FF_X79_Y34_N15
\sc2|sc0|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[2]~10_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(2));

-- Location: LCCOMB_X79_Y34_N16
\sc2|sc0|clk_toggles[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[3]~12_combout\ = (\sc2|sc0|clk_toggles\(3) & (!\sc2|sc0|clk_toggles[2]~11\)) # (!\sc2|sc0|clk_toggles\(3) & ((\sc2|sc0|clk_toggles[2]~11\) # (GND)))
-- \sc2|sc0|clk_toggles[3]~13\ = CARRY((!\sc2|sc0|clk_toggles[2]~11\) # (!\sc2|sc0|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(3),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[2]~11\,
	combout => \sc2|sc0|clk_toggles[3]~12_combout\,
	cout => \sc2|sc0|clk_toggles[3]~13\);

-- Location: FF_X79_Y34_N17
\sc2|sc0|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[3]~12_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(3));

-- Location: LCCOMB_X79_Y34_N18
\sc2|sc0|clk_toggles[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[4]~14_combout\ = (\sc2|sc0|clk_toggles\(4) & (\sc2|sc0|clk_toggles[3]~13\ $ (GND))) # (!\sc2|sc0|clk_toggles\(4) & (!\sc2|sc0|clk_toggles[3]~13\ & VCC))
-- \sc2|sc0|clk_toggles[4]~15\ = CARRY((\sc2|sc0|clk_toggles\(4) & !\sc2|sc0|clk_toggles[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(4),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[3]~13\,
	combout => \sc2|sc0|clk_toggles[4]~14_combout\,
	cout => \sc2|sc0|clk_toggles[4]~15\);

-- Location: FF_X79_Y34_N19
\sc2|sc0|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[4]~14_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(4));

-- Location: LCCOMB_X79_Y34_N20
\sc2|sc0|clk_toggles[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[5]~17_combout\ = \sc2|sc0|clk_toggles[4]~15\ $ (\sc2|sc0|clk_toggles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|clk_toggles\(5),
	cin => \sc2|sc0|clk_toggles[4]~15\,
	combout => \sc2|sc0|clk_toggles[5]~17_combout\);

-- Location: FF_X79_Y34_N21
\sc2|sc0|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[5]~17_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(5));

-- Location: LCCOMB_X79_Y34_N4
\sc2|sc0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|Equal0~0_combout\ = (!\sc2|sc0|clk_toggles\(3) & (!\sc2|sc0|clk_toggles\(2) & !\sc2|sc0|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(3),
	datac => \sc2|sc0|clk_toggles\(2),
	datad => \sc2|sc0|clk_toggles\(1),
	combout => \sc2|sc0|Equal0~0_combout\);

-- Location: LCCOMB_X79_Y34_N6
\sc2|sc0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|Equal0~1_combout\ = (\sc2|sc0|clk_toggles\(0) & (\sc2|sc0|clk_toggles\(5) & (\sc2|sc0|Equal0~0_combout\ & \sc2|sc0|clk_toggles\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(0),
	datab => \sc2|sc0|clk_toggles\(5),
	datac => \sc2|sc0|Equal0~0_combout\,
	datad => \sc2|sc0|clk_toggles\(4),
	combout => \sc2|sc0|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y36_N0
\sc2|sc0|last_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~0_combout\ = (\sc4|qp\(1) & (!\sc2|sc0|state~q\ & (!\sc4|qp\(0) & \sc4|qp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc2|sc0|state~q\,
	datac => \sc4|qp\(0),
	datad => \sc4|qp\(2),
	combout => \sc2|sc0|last_bit[0]~0_combout\);

-- Location: LCCOMB_X80_Y34_N26
\sc2|sc0|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|busy~0_combout\ = (\sc2|sc0|last_bit[0]~0_combout\) # ((!\sc2|sc0|Equal0~1_combout\ & \sc2|sc0|state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|Equal0~1_combout\,
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|last_bit[0]~0_combout\,
	combout => \sc2|sc0|busy~0_combout\);

-- Location: LCCOMB_X80_Y36_N18
\sc2|sc0|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|busy~1_combout\ = !\sc2|sc0|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|busy~0_combout\,
	combout => \sc2|sc0|busy~1_combout\);

-- Location: FF_X80_Y36_N19
\sc2|sc0|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|busy~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|busy~q\);

-- Location: LCCOMB_X80_Y36_N10
\sc4|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux6~2_combout\ = (\sc2|sc0|busy~q\ & \sc4|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|busy~q\,
	datac => \sc4|qp\(0),
	combout => \sc4|Mux6~2_combout\);

-- Location: LCCOMB_X80_Y36_N8
\sc4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux6~1_combout\ = (\sc4|qp\(1) & ((\sc4|qp\(2)) # ((\sc6|Equal0~2_combout\) # (!\sc4|qp\(0))))) # (!\sc4|qp\(1) & (!\sc4|qp\(2) & (\sc4|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|qp\(2),
	datac => \sc4|qp\(0),
	datad => \sc6|Equal0~2_combout\,
	combout => \sc4|Mux6~1_combout\);

-- Location: LCCOMB_X80_Y36_N6
\sc4|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux6~3_combout\ = (\sc4|Mux6~1_combout\ & (((!\sc4|qp\(2))) # (!\sc4|Mux6~2_combout\))) # (!\sc4|Mux6~1_combout\ & (((\sc4|Mux6~0_combout\ & \sc4|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|Mux6~2_combout\,
	datab => \sc4|Mux6~0_combout\,
	datac => \sc4|Mux6~1_combout\,
	datad => \sc4|qp\(2),
	combout => \sc4|Mux6~3_combout\);

-- Location: FF_X80_Y36_N7
\sc4|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|Mux6~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(1));

-- Location: LCCOMB_X79_Y36_N22
\sc4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux4~0_combout\ = (\sc4|qp\(2)) # ((!\sc4|qp\(1) & !\sc4|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(0),
	combout => \sc4|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y34_N8
\sc2|sc0|INT_ss_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_ss_n~1_combout\ = !\sc2|sc0|INT_ss_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|INT_ss_n~0_combout\,
	combout => \sc2|sc0|INT_ss_n~1_combout\);

-- Location: FF_X79_Y34_N9
\sc2|sc0|INT_ss_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|INT_ss_n~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|INT_ss_n~q\);

-- Location: LCCOMB_X79_Y34_N26
\sc2|sc0|INT_sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~0_combout\ = (((!\sc2|sc0|clk_toggles\(0) & \sc2|sc0|Equal0~0_combout\)) # (!\sc2|sc0|clk_toggles\(4))) # (!\sc2|sc0|clk_toggles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(0),
	datab => \sc2|sc0|clk_toggles\(5),
	datac => \sc2|sc0|Equal0~0_combout\,
	datad => \sc2|sc0|clk_toggles\(4),
	combout => \sc2|sc0|INT_sclk~0_combout\);

-- Location: LCCOMB_X79_Y34_N0
\sc2|sc0|INT_sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~1_combout\ = (\sc2|sc0|last_bit[0]~0_combout\) # ((\sc2|sc0|INT_sclk~0_combout\ & (\sc2|sc0|state~q\ & \sc2|sc0|INT_ss_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|INT_sclk~0_combout\,
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|INT_ss_n~q\,
	datad => \sc2|sc0|last_bit[0]~0_combout\,
	combout => \sc2|sc0|INT_sclk~1_combout\);

-- Location: LCCOMB_X79_Y34_N30
\sc2|sc0|INT_sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~2_combout\ = (\RST~input_o\ & ((\sc2|sc0|INT_sclk~q\ & ((!\sc2|sc0|INT_sclk~1_combout\) # (!\sc2|sc0|state~q\))) # (!\sc2|sc0|INT_sclk~q\ & ((\sc2|sc0|INT_sclk~1_combout\))))) # (!\RST~input_o\ & (((\sc2|sc0|INT_sclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|INT_sclk~q\,
	datad => \sc2|sc0|INT_sclk~1_combout\,
	combout => \sc2|sc0|INT_sclk~2_combout\);

-- Location: FF_X79_Y34_N31
\sc2|sc0|INT_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|INT_sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|INT_sclk~q\);

-- Location: LCCOMB_X73_Y38_N30
\sc0|sc2|Bloque_3|qn[19]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[19]~43_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[19]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[19]~38_combout\,
	combout => \sc0|sc2|Bloque_3|qn[19]~43_combout\);

-- Location: FF_X73_Y38_N31
\sc0|sc2|Bloque_3|qp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[19]~43_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(19));

-- Location: IOIBUF_X107_Y0_N1
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: FF_X72_Y40_N9
\sc1|c0|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[0]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(0));

-- Location: FF_X72_Y40_N13
\sc0|sc3|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(0));

-- Location: FF_X74_Y40_N21
\sc0|sc4|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(0));

-- Location: FF_X72_Y40_N29
\sc0|sc5|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(0));

-- Location: FF_X73_Y37_N5
\sc0|sc6|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(0));

-- Location: FF_X72_Y40_N11
\sc0|sc7|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(0));

-- Location: FF_X73_Y37_N3
\sc0|sc8|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(0));

-- Location: FF_X73_Y38_N11
\sc0|sc9|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc8|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(0));

-- Location: LCCOMB_X73_Y37_N20
\sc0|sc10|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc10|qp[0]~feeder_combout\ = \sc0|sc9|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc9|qp\(0),
	combout => \sc0|sc10|qp[0]~feeder_combout\);

-- Location: FF_X73_Y37_N21
\sc0|sc10|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc10|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(0));

-- Location: LCCOMB_X73_Y38_N28
\sc0|sc11|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc11|qp[0]~feeder_combout\ = \sc0|sc10|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc10|qp\(0),
	combout => \sc0|sc11|qp[0]~feeder_combout\);

-- Location: FF_X73_Y38_N29
\sc0|sc11|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc11|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(0));

-- Location: FF_X73_Y37_N7
\sc0|sc12|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(0));

-- Location: FF_X72_Y40_N19
\sc0|sc13|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc12|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(0));

-- Location: LCCOMB_X70_Y40_N24
\sc0|sc14|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[0]~feeder_combout\ = \sc0|sc13|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(0),
	combout => \sc0|sc14|qp[0]~feeder_combout\);

-- Location: FF_X70_Y40_N25
\sc0|sc14|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(0));

-- Location: FF_X72_Y40_N17
\sc0|sc15|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(0));

-- Location: LCCOMB_X70_Y40_N4
\sc0|sc16|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc16|qp[0]~feeder_combout\ = \sc0|sc15|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc15|qp\(0),
	combout => \sc0|sc16|qp[0]~feeder_combout\);

-- Location: FF_X70_Y40_N5
\sc0|sc16|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc16|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(0));

-- Location: FF_X70_Y40_N7
\sc0|sc17|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc16|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(0));

-- Location: FF_X72_Y40_N27
\sc0|sc18|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(0));

-- Location: FF_X72_Y40_N31
\sc0|sc19|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(0));

-- Location: FF_X72_Y40_N23
\sc0|sc20|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc19|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(0));

-- Location: FF_X72_Y40_N25
\sc0|sc21|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(0));

-- Location: LCCOMB_X75_Y40_N18
\sc0|sc22|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc22|qp[0]~feeder_combout\ = \sc0|sc21|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc21|qp\(0),
	combout => \sc0|sc22|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N19
\sc0|sc22|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc22|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(0));

-- Location: LCCOMB_X75_Y40_N26
\sc0|sc23|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc23|qp[0]~feeder_combout\ = \sc0|sc22|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc22|qp\(0),
	combout => \sc0|sc23|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N27
\sc0|sc23|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc23|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(0));

-- Location: LCCOMB_X75_Y40_N8
\sc0|sc24|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc24|qp[0]~feeder_combout\ = \sc0|sc23|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc23|qp\(0),
	combout => \sc0|sc24|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N9
\sc0|sc24|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc24|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(0));

-- Location: FF_X75_Y40_N29
\sc0|sc25|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(0));

-- Location: LCCOMB_X75_Y40_N4
\sc0|sc26|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[0]~feeder_combout\ = \sc0|sc25|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(0),
	combout => \sc0|sc26|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N5
\sc0|sc26|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(0));

-- Location: FF_X75_Y40_N31
\sc0|sc27|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(0));

-- Location: FF_X75_Y40_N1
\sc0|sc28|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(0));

-- Location: FF_X75_Y40_N11
\sc0|sc29|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(0));

-- Location: LCCOMB_X75_Y40_N24
\sc0|sc30|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc30|qp[0]~feeder_combout\ = \sc0|sc29|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc29|qp\(0),
	combout => \sc0|sc30|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N25
\sc0|sc30|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc30|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(0));

-- Location: FF_X75_Y40_N13
\sc0|sc31|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(0));

-- Location: LCCOMB_X75_Y40_N10
\sc0|sc0|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~7_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc29|qp\(0)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc31|qp\(0) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc31|qp\(0),
	datac => \sc0|sc29|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux9~7_combout\);

-- Location: LCCOMB_X72_Y40_N24
\sc0|sc0|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux9~7_combout\ & ((\sc0|sc21|qp\(0)))) # (!\sc0|sc0|Mux9~7_combout\ & (\sc0|sc23|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc23|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc21|qp\(0),
	datad => \sc0|sc0|Mux9~7_combout\,
	combout => \sc0|sc0|Mux9~8_combout\);

-- Location: FF_X75_Y40_N7
\sc0|sc32|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc31|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(0));

-- Location: FF_X75_Y40_N17
\sc0|sc33|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(0));

-- Location: LCCOMB_X75_Y40_N14
\sc0|sc34|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc34|qp[0]~feeder_combout\ = \sc0|sc33|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc33|qp\(0),
	combout => \sc0|sc34|qp[0]~feeder_combout\);

-- Location: FF_X75_Y40_N15
\sc0|sc34|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc34|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(0));

-- Location: FF_X75_Y40_N3
\sc0|sc35|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(0));

-- Location: LCCOMB_X75_Y40_N2
\sc0|sc0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc27|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc35|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc27|qp\(0),
	datac => \sc0|sc35|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux9~0_combout\);

-- Location: LCCOMB_X75_Y40_N16
\sc0|sc0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux9~0_combout\ & (\sc0|sc25|qp\(0))) # (!\sc0|sc0|Mux9~0_combout\ & ((\sc0|sc33|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc25|qp\(0),
	datac => \sc0|sc33|qp\(0),
	datad => \sc0|sc0|Mux9~0_combout\,
	combout => \sc0|sc0|Mux9~1_combout\);

-- Location: FF_X75_Y40_N23
\sc0|sc36|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc35|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(0));

-- Location: LCCOMB_X75_Y40_N0
\sc0|sc0|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~4_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc28|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc36|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc36|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc28|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux9~4_combout\);

-- Location: LCCOMB_X75_Y40_N30
\sc0|sc0|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~5_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux9~4_combout\ & ((\sc0|sc26|qp\(0)))) # (!\sc0|sc0|Mux9~4_combout\ & (\sc0|sc34|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc34|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc26|qp\(0),
	datad => \sc0|sc0|Mux9~4_combout\,
	combout => \sc0|sc0|Mux9~5_combout\);

-- Location: LCCOMB_X75_Y40_N12
\sc0|sc0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc30|qp\(0)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc32|qp\(0) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc32|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux9~2_combout\);

-- Location: LCCOMB_X75_Y40_N28
\sc0|sc0|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~3_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux9~2_combout\ & (\sc0|sc22|qp\(0))) # (!\sc0|sc0|Mux9~2_combout\ & ((\sc0|sc24|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc22|qp\(0),
	datac => \sc0|sc24|qp\(0),
	datad => \sc0|sc0|Mux9~2_combout\,
	combout => \sc0|sc0|Mux9~3_combout\);

-- Location: LCCOMB_X75_Y40_N20
\sc0|sc0|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~3_combout\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux9~5_combout\,
	datad => \sc0|sc0|Mux9~3_combout\,
	combout => \sc0|sc0|Mux9~6_combout\);

-- Location: LCCOMB_X72_Y40_N4
\sc0|sc0|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux9~6_combout\ & (\sc0|sc0|Mux9~8_combout\)) # (!\sc0|sc0|Mux9~6_combout\ & ((\sc0|sc0|Mux9~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux9~8_combout\,
	datac => \sc0|sc0|Mux9~1_combout\,
	datad => \sc0|sc0|Mux9~6_combout\,
	combout => \sc0|sc0|Mux9~9_combout\);

-- Location: LCCOMB_X73_Y40_N20
\sc0|sc37|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[0]~feeder_combout\ = \sc0|sc36|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(0),
	combout => \sc0|sc37|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N21
\sc0|sc37|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(0));

-- Location: LCCOMB_X73_Y40_N26
\sc0|sc38|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[0]~feeder_combout\ = \sc0|sc37|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(0),
	combout => \sc0|sc38|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N27
\sc0|sc38|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(0));

-- Location: FF_X73_Y40_N11
\sc0|sc39|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(0));

-- Location: FF_X72_Y40_N21
\sc0|sc40|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(0));

-- Location: LCCOMB_X73_Y40_N6
\sc0|sc41|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc41|qp[0]~feeder_combout\ = \sc0|sc40|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc40|qp\(0),
	combout => \sc0|sc41|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N7
\sc0|sc41|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc41|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(0));

-- Location: LCCOMB_X73_Y40_N16
\sc0|sc42|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[0]~feeder_combout\ = \sc0|sc41|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(0),
	combout => \sc0|sc42|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N17
\sc0|sc42|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(0));

-- Location: FF_X73_Y40_N9
\sc0|sc43|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(0));

-- Location: FF_X73_Y40_N15
\sc0|sc44|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(0));

-- Location: LCCOMB_X73_Y40_N14
\sc0|sc0|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc43|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc44|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc43|qp\(0),
	datac => \sc0|sc44|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~10_combout\);

-- Location: LCCOMB_X72_Y40_N20
\sc0|sc0|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~10_combout\ & (\sc0|sc39|qp\(0))) # (!\sc0|sc0|Mux9~10_combout\ & ((\sc0|sc40|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc39|qp\(0),
	datac => \sc0|sc40|qp\(0),
	datad => \sc0|sc0|Mux9~10_combout\,
	combout => \sc0|sc0|Mux9~11_combout\);

-- Location: LCCOMB_X73_Y40_N8
\sc0|sc0|Mux9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~17_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc41|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc42|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc41|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc42|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~17_combout\);

-- Location: LCCOMB_X73_Y40_N10
\sc0|sc0|Mux9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~17_combout\ & (\sc0|sc37|qp\(0))) # (!\sc0|sc0|Mux9~17_combout\ & ((\sc0|sc38|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux9~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc37|qp\(0),
	datac => \sc0|sc38|qp\(0),
	datad => \sc0|sc0|Mux9~17_combout\,
	combout => \sc0|sc0|Mux9~18_combout\);

-- Location: FF_X73_Y40_N13
\sc0|sc45|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(0));

-- Location: FF_X73_Y40_N31
\sc0|sc46|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(0));

-- Location: FF_X73_Y40_N19
\sc0|sc47|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(0));

-- Location: FF_X73_Y40_N5
\sc0|sc48|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc47|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(0));

-- Location: FF_X73_Y40_N29
\sc0|sc49|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(0));

-- Location: LCCOMB_X73_Y40_N2
\sc0|sc50|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc50|qp[0]~feeder_combout\ = \sc0|sc49|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc49|qp\(0),
	combout => \sc0|sc50|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N3
\sc0|sc50|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc50|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(0));

-- Location: LCCOMB_X73_Y40_N22
\sc0|sc51|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[0]~feeder_combout\ = \sc0|sc50|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(0),
	combout => \sc0|sc51|qp[0]~feeder_combout\);

-- Location: FF_X73_Y40_N23
\sc0|sc51|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(0));

-- Location: FF_X73_Y40_N1
\sc0|sc52|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(0));

-- Location: LCCOMB_X73_Y40_N0
\sc0|sc0|Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~14_combout\);

-- Location: LCCOMB_X73_Y40_N28
\sc0|sc0|Mux9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~14_combout\ & (\sc0|sc47|qp\(0))) # (!\sc0|sc0|Mux9~14_combout\ & ((\sc0|sc48|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc47|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc48|qp\(0),
	datad => \sc0|sc0|Mux9~14_combout\,
	combout => \sc0|sc0|Mux9~15_combout\);

-- Location: LCCOMB_X73_Y40_N18
\sc0|sc0|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~12_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc46|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc50|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc50|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc46|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux9~12_combout\);

-- Location: LCCOMB_X73_Y40_N12
\sc0|sc0|Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux9~12_combout\ & ((\sc0|sc45|qp\(0)))) # (!\sc0|sc0|Mux9~12_combout\ & (\sc0|sc49|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc49|qp\(0),
	datac => \sc0|sc45|qp\(0),
	datad => \sc0|sc0|Mux9~12_combout\,
	combout => \sc0|sc0|Mux9~13_combout\);

-- Location: LCCOMB_X73_Y40_N24
\sc0|sc0|Mux9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~16_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc0|Mux9~13_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux9~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux9~15_combout\,
	datad => \sc0|sc0|Mux9~13_combout\,
	combout => \sc0|sc0|Mux9~16_combout\);

-- Location: LCCOMB_X72_Y40_N14
\sc0|sc0|Mux9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~19_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux9~16_combout\ & ((\sc0|sc0|Mux9~18_combout\))) # (!\sc0|sc0|Mux9~16_combout\ & (\sc0|sc0|Mux9~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc0|Mux9~11_combout\,
	datac => \sc0|sc0|Mux9~18_combout\,
	datad => \sc0|sc0|Mux9~16_combout\,
	combout => \sc0|sc0|Mux9~19_combout\);

-- Location: LCCOMB_X72_Y40_N2
\sc0|sc0|Mux9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux9~9_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux9~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc0|Mux9~9_combout\,
	datac => \sc0|sc0|Mux9~19_combout\,
	datad => \sc0|sc2|Bloque_5|qp\(5),
	combout => \sc0|sc0|Mux9~20_combout\);

-- Location: LCCOMB_X74_Y38_N28
\sc0|sc0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~0_combout\ = ((\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc2|Bloque_5|qp\(1)) # (\sc0|sc2|Bloque_5|qp\(2)))) # (!\sc0|sc2|Bloque_5|qp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y38_N10
\sc0|sc0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~1_combout\ = (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(1) & !\sc0|sc2|Bloque_5|qp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux6~1_combout\);

-- Location: LCCOMB_X74_Y38_N0
\sc0|sc0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~2_combout\ = (\sc0|sc0|Mux6~1_combout\) # (!\sc0|sc2|Bloque_5|qp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datad => \sc0|sc0|Mux6~1_combout\,
	combout => \sc0|sc0|Mux6~2_combout\);

-- Location: LCCOMB_X74_Y38_N2
\sc0|sc0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~3_combout\ = (\sc0|sc0|Mux6~0_combout\ & (\sc0|sc2|Bloque_5|qp\(4))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc2|Bloque_5|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc0|Mux6~0_combout\,
	combout => \sc0|sc0|Mux6~3_combout\);

-- Location: LCCOMB_X73_Y37_N2
\sc0|sc0|Mux9~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~21_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc8|qp\(0)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc12|qp\(0) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc12|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc8|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~21_combout\);

-- Location: LCCOMB_X72_Y40_N10
\sc0|sc0|Mux9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~22_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux9~21_combout\ & ((\sc0|sc7|qp\(0)))) # (!\sc0|sc0|Mux9~21_combout\ & (\sc0|sc11|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux9~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc11|qp\(0),
	datac => \sc0|sc7|qp\(0),
	datad => \sc0|sc0|Mux9~21_combout\,
	combout => \sc0|sc0|Mux9~22_combout\);

-- Location: LCCOMB_X73_Y37_N4
\sc0|sc0|Mux9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~28_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc6|qp\(0)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc10|qp\(0) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc10|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc6|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~28_combout\);

-- Location: LCCOMB_X72_Y40_N28
\sc0|sc0|Mux9~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~29_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux9~28_combout\ & ((\sc0|sc5|qp\(0)))) # (!\sc0|sc0|Mux9~28_combout\ & (\sc0|sc9|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc5|qp\(0),
	datad => \sc0|sc0|Mux9~28_combout\,
	combout => \sc0|sc0|Mux9~29_combout\);

-- Location: LCCOMB_X72_Y40_N22
\sc0|sc0|Mux9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~25_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc19|qp\(0)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc20|qp\(0) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc19|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc20|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux9~25_combout\);

-- Location: LCCOMB_X72_Y40_N16
\sc0|sc0|Mux9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~26_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~25_combout\ & ((\sc0|sc15|qp\(0)))) # (!\sc0|sc0|Mux9~25_combout\ & (\sc0|sc16|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux9~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc16|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc15|qp\(0),
	datad => \sc0|sc0|Mux9~25_combout\,
	combout => \sc0|sc0|Mux9~26_combout\);

-- Location: LCCOMB_X72_Y40_N26
\sc0|sc0|Mux9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~23_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc17|qp\(0)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc18|qp\(0) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc17|qp\(0),
	datac => \sc0|sc18|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux9~23_combout\);

-- Location: LCCOMB_X72_Y40_N18
\sc0|sc0|Mux9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~24_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux9~23_combout\ & ((\sc0|sc13|qp\(0)))) # (!\sc0|sc0|Mux9~23_combout\ & (\sc0|sc14|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux9~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc14|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc13|qp\(0),
	datad => \sc0|sc0|Mux9~23_combout\,
	combout => \sc0|sc0|Mux9~24_combout\);

-- Location: LCCOMB_X72_Y40_N0
\sc0|sc0|Mux9~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~27_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3)) # (\sc0|sc0|Mux9~24_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc0|Mux9~26_combout\ & (!\sc0|sc2|Bloque_5|qp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux9~26_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux9~24_combout\,
	combout => \sc0|sc0|Mux9~27_combout\);

-- Location: LCCOMB_X72_Y40_N6
\sc0|sc0|Mux9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~30_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux9~27_combout\ & ((\sc0|sc0|Mux9~29_combout\))) # (!\sc0|sc0|Mux9~27_combout\ & (\sc0|sc0|Mux9~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux9~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux9~22_combout\,
	datab => \sc0|sc0|Mux9~29_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux9~27_combout\,
	combout => \sc0|sc0|Mux9~30_combout\);

-- Location: LCCOMB_X72_Y40_N8
\sc0|sc0|Mux9~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(0))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux9~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(0),
	datad => \sc0|sc0|Mux9~30_combout\,
	combout => \sc0|sc0|Mux9~31_combout\);

-- Location: LCCOMB_X72_Y40_N12
\sc0|sc0|Mux9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux9~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux9~31_combout\ & (\sc0|sc4|qp\(0))) # (!\sc0|sc0|Mux9~31_combout\ & ((\sc0|sc3|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~0_combout\,
	datab => \sc0|sc4|qp\(0),
	datac => \sc0|sc3|qp\(0),
	datad => \sc0|sc0|Mux9~31_combout\,
	combout => \sc0|sc0|Mux9~32_combout\);

-- Location: LCCOMB_X72_Y40_N30
\sc0|sc0|Mux9~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~33_combout\ = (\sc0|sc0|Mux9~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux9~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc0|Mux9~20_combout\,
	datad => \sc0|sc0|Mux9~32_combout\,
	combout => \sc0|sc0|Mux9~33_combout\);

-- Location: IOIBUF_X60_Y0_N22
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: FF_X73_Y39_N27
\sc1|c0|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[1]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(1));

-- Location: FF_X73_Y39_N19
\sc0|sc3|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(1));

-- Location: FF_X72_Y39_N17
\sc0|sc4|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(1));

-- Location: FF_X74_Y40_N13
\sc0|sc5|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(1));

-- Location: FF_X73_Y39_N31
\sc0|sc6|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(1));

-- Location: FF_X74_Y40_N23
\sc0|sc7|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(1));

-- Location: FF_X73_Y39_N21
\sc0|sc8|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(1));

-- Location: LCCOMB_X74_Y40_N14
\sc0|sc9|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc9|qp[1]~feeder_combout\ = \sc0|sc8|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc8|qp\(1),
	combout => \sc0|sc9|qp[1]~feeder_combout\);

-- Location: FF_X74_Y40_N15
\sc0|sc9|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc9|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(1));

-- Location: FF_X73_Y39_N3
\sc0|sc10|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(1));

-- Location: FF_X74_Y40_N19
\sc0|sc11|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc10|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(1));

-- Location: FF_X73_Y39_N15
\sc0|sc12|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(1));

-- Location: LCCOMB_X74_Y40_N16
\sc0|sc13|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc13|qp[1]~feeder_combout\ = \sc0|sc12|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc12|qp\(1),
	combout => \sc0|sc13|qp[1]~feeder_combout\);

-- Location: FF_X74_Y40_N17
\sc0|sc13|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc13|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(1));

-- Location: FF_X72_Y39_N23
\sc0|sc14|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc13|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(1));

-- Location: FF_X74_Y40_N9
\sc0|sc15|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(1));

-- Location: LCCOMB_X73_Y39_N12
\sc0|sc16|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc16|qp[1]~feeder_combout\ = \sc0|sc15|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc15|qp\(1),
	combout => \sc0|sc16|qp[1]~feeder_combout\);

-- Location: FF_X73_Y39_N13
\sc0|sc16|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc16|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(1));

-- Location: LCCOMB_X74_Y40_N4
\sc0|sc17|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc17|qp[1]~feeder_combout\ = \sc0|sc16|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc16|qp\(1),
	combout => \sc0|sc17|qp[1]~feeder_combout\);

-- Location: FF_X74_Y40_N5
\sc0|sc17|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc17|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(1));

-- Location: FF_X73_Y39_N17
\sc0|sc18|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(1));

-- Location: LCCOMB_X74_Y40_N6
\sc0|sc19|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc19|qp[1]~feeder_combout\ = \sc0|sc18|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc18|qp\(1),
	combout => \sc0|sc19|qp[1]~feeder_combout\);

-- Location: FF_X74_Y40_N7
\sc0|sc19|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc19|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(1));

-- Location: LCCOMB_X74_Y40_N0
\sc0|sc0|Mux8~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~21_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc17|qp\(1)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc19|qp\(1) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc19|qp\(1),
	datac => \sc0|sc17|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~21_combout\);

-- Location: LCCOMB_X74_Y40_N18
\sc0|sc0|Mux8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~22_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux8~21_combout\ & (\sc0|sc9|qp\(1))) # (!\sc0|sc0|Mux8~21_combout\ & ((\sc0|sc11|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux8~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc11|qp\(1),
	datad => \sc0|sc0|Mux8~21_combout\,
	combout => \sc0|sc0|Mux8~22_combout\);

-- Location: LCCOMB_X73_Y39_N20
\sc0|sc0|Mux8~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~23_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc8|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc16|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc16|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc8|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~23_combout\);

-- Location: LCCOMB_X73_Y39_N30
\sc0|sc0|Mux8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~24_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~23_combout\ & ((\sc0|sc6|qp\(1)))) # (!\sc0|sc0|Mux8~23_combout\ & (\sc0|sc14|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux8~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc14|qp\(1),
	datac => \sc0|sc6|qp\(1),
	datad => \sc0|sc0|Mux8~23_combout\,
	combout => \sc0|sc0|Mux8~24_combout\);

-- Location: LCCOMB_X73_Y39_N8
\sc0|sc20|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc20|qp[1]~feeder_combout\ = \sc0|sc19|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc19|qp\(1),
	combout => \sc0|sc20|qp[1]~feeder_combout\);

-- Location: FF_X73_Y39_N9
\sc0|sc20|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc20|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(1));

-- Location: LCCOMB_X73_Y39_N16
\sc0|sc0|Mux8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~25_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc18|qp\(1)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc20|qp\(1) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc20|qp\(1),
	datac => \sc0|sc18|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~25_combout\);

-- Location: LCCOMB_X73_Y39_N2
\sc0|sc0|Mux8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~26_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux8~25_combout\ & ((\sc0|sc10|qp\(1)))) # (!\sc0|sc0|Mux8~25_combout\ & (\sc0|sc12|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux8~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc12|qp\(1),
	datac => \sc0|sc10|qp\(1),
	datad => \sc0|sc0|Mux8~25_combout\,
	combout => \sc0|sc0|Mux8~26_combout\);

-- Location: LCCOMB_X73_Y39_N4
\sc0|sc0|Mux8~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~27_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux8~24_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux8~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux8~24_combout\,
	datad => \sc0|sc0|Mux8~26_combout\,
	combout => \sc0|sc0|Mux8~27_combout\);

-- Location: LCCOMB_X74_Y40_N10
\sc0|sc0|Mux8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~28_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc7|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc15|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc7|qp\(1),
	datab => \sc0|sc15|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~28_combout\);

-- Location: LCCOMB_X74_Y40_N2
\sc0|sc0|Mux8~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~29_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~28_combout\ & (\sc0|sc5|qp\(1))) # (!\sc0|sc0|Mux8~28_combout\ & ((\sc0|sc13|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc5|qp\(1),
	datab => \sc0|sc13|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc0|Mux8~28_combout\,
	combout => \sc0|sc0|Mux8~29_combout\);

-- Location: LCCOMB_X73_Y39_N28
\sc0|sc0|Mux8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~30_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux8~27_combout\ & ((\sc0|sc0|Mux8~29_combout\))) # (!\sc0|sc0|Mux8~27_combout\ & (\sc0|sc0|Mux8~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux8~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux8~22_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux8~27_combout\,
	datad => \sc0|sc0|Mux8~29_combout\,
	combout => \sc0|sc0|Mux8~30_combout\);

-- Location: LCCOMB_X73_Y39_N26
\sc0|sc0|Mux8~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(1))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux8~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(1),
	datad => \sc0|sc0|Mux8~30_combout\,
	combout => \sc0|sc0|Mux8~31_combout\);

-- Location: LCCOMB_X73_Y39_N18
\sc0|sc0|Mux8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux8~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux8~31_combout\ & (\sc0|sc4|qp\(1))) # (!\sc0|sc0|Mux8~31_combout\ & ((\sc0|sc3|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(1),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(1),
	datad => \sc0|sc0|Mux8~31_combout\,
	combout => \sc0|sc0|Mux8~32_combout\);

-- Location: LCCOMB_X74_Y35_N10
\sc0|sc21|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc21|qp[1]~feeder_combout\ = \sc0|sc20|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc20|qp\(1),
	combout => \sc0|sc21|qp[1]~feeder_combout\);

-- Location: FF_X74_Y35_N11
\sc0|sc21|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc21|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(1));

-- Location: LCCOMB_X74_Y35_N18
\sc0|sc22|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc22|qp[1]~feeder_combout\ = \sc0|sc21|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc21|qp\(1),
	combout => \sc0|sc22|qp[1]~feeder_combout\);

-- Location: FF_X74_Y35_N19
\sc0|sc22|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc22|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(1));

-- Location: FF_X74_Y35_N17
\sc0|sc23|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(1));

-- Location: FF_X74_Y35_N7
\sc0|sc24|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc23|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(1));

-- Location: FF_X74_Y35_N27
\sc0|sc25|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(1));

-- Location: FF_X74_Y35_N15
\sc0|sc26|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc25|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(1));

-- Location: FF_X74_Y35_N23
\sc0|sc27|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(1));

-- Location: FF_X74_Y35_N31
\sc0|sc28|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(1));

-- Location: FF_X74_Y35_N9
\sc0|sc29|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(1));

-- Location: FF_X74_Y35_N21
\sc0|sc30|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc29|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(1));

-- Location: LCCOMB_X74_Y35_N4
\sc0|sc31|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc31|qp[1]~feeder_combout\ = \sc0|sc30|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc30|qp\(1),
	combout => \sc0|sc31|qp[1]~feeder_combout\);

-- Location: FF_X74_Y35_N5
\sc0|sc31|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc31|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(1));

-- Location: LCCOMB_X74_Y35_N16
\sc0|sc0|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~7_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc23|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc31|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc31|qp\(1),
	datac => \sc0|sc23|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~7_combout\);

-- Location: LCCOMB_X74_Y35_N8
\sc0|sc0|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~8_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~7_combout\ & (\sc0|sc21|qp\(1))) # (!\sc0|sc0|Mux8~7_combout\ & ((\sc0|sc29|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc21|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc29|qp\(1),
	datad => \sc0|sc0|Mux8~7_combout\,
	combout => \sc0|sc0|Mux8~8_combout\);

-- Location: FF_X74_Y35_N1
\sc0|sc32|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc31|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(1));

-- Location: FF_X74_Y35_N29
\sc0|sc33|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(1));

-- Location: FF_X74_Y35_N3
\sc0|sc34|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc33|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(1));

-- Location: FF_X74_Y35_N25
\sc0|sc35|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(1));

-- Location: LCCOMB_X74_Y35_N24
\sc0|sc0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc33|qp\(1)) # ((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc35|qp\(1) & !\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc33|qp\(1),
	datac => \sc0|sc35|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux8~0_combout\);

-- Location: LCCOMB_X74_Y35_N26
\sc0|sc0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux8~0_combout\ & ((\sc0|sc25|qp\(1)))) # (!\sc0|sc0|Mux8~0_combout\ & (\sc0|sc27|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc27|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc25|qp\(1),
	datad => \sc0|sc0|Mux8~0_combout\,
	combout => \sc0|sc0|Mux8~1_combout\);

-- Location: LCCOMB_X74_Y35_N28
\sc0|sc0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc24|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc32|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc32|qp\(1),
	datad => \sc0|sc24|qp\(1),
	combout => \sc0|sc0|Mux8~2_combout\);

-- Location: LCCOMB_X74_Y35_N20
\sc0|sc0|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~3_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~2_combout\ & (\sc0|sc22|qp\(1))) # (!\sc0|sc0|Mux8~2_combout\ & ((\sc0|sc30|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc22|qp\(1),
	datac => \sc0|sc30|qp\(1),
	datad => \sc0|sc0|Mux8~2_combout\,
	combout => \sc0|sc0|Mux8~3_combout\);

-- Location: LCCOMB_X74_Y35_N12
\sc0|sc36|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc36|qp[1]~feeder_combout\ = \sc0|sc35|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc35|qp\(1),
	combout => \sc0|sc36|qp[1]~feeder_combout\);

-- Location: FF_X74_Y35_N13
\sc0|sc36|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc36|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(1));

-- Location: LCCOMB_X74_Y35_N2
\sc0|sc0|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc34|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc36|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc36|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc34|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux8~4_combout\);

-- Location: LCCOMB_X74_Y35_N22
\sc0|sc0|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~5_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux8~4_combout\ & ((\sc0|sc26|qp\(1)))) # (!\sc0|sc0|Mux8~4_combout\ & (\sc0|sc28|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc28|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc26|qp\(1),
	datad => \sc0|sc0|Mux8~4_combout\,
	combout => \sc0|sc0|Mux8~5_combout\);

-- Location: LCCOMB_X73_Y39_N6
\sc0|sc0|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux8~3_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux8~3_combout\,
	datad => \sc0|sc0|Mux8~5_combout\,
	combout => \sc0|sc0|Mux8~6_combout\);

-- Location: LCCOMB_X73_Y39_N22
\sc0|sc0|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux8~6_combout\ & (\sc0|sc0|Mux8~8_combout\)) # (!\sc0|sc0|Mux8~6_combout\ & ((\sc0|sc0|Mux8~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux8~8_combout\,
	datac => \sc0|sc0|Mux8~1_combout\,
	datad => \sc0|sc0|Mux8~6_combout\,
	combout => \sc0|sc0|Mux8~9_combout\);

-- Location: LCCOMB_X74_Y36_N24
\sc0|sc37|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[1]~feeder_combout\ = \sc0|sc36|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(1),
	combout => \sc0|sc37|qp[1]~feeder_combout\);

-- Location: FF_X74_Y36_N25
\sc0|sc37|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(1));

-- Location: LCCOMB_X74_Y36_N26
\sc0|sc38|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[1]~feeder_combout\ = \sc0|sc37|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(1),
	combout => \sc0|sc38|qp[1]~feeder_combout\);

-- Location: FF_X74_Y36_N27
\sc0|sc38|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(1));

-- Location: FF_X74_Y36_N15
\sc0|sc39|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(1));

-- Location: FF_X74_Y36_N31
\sc0|sc40|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(1));

-- Location: FF_X74_Y36_N9
\sc0|sc41|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(1));

-- Location: FF_X74_Y36_N5
\sc0|sc42|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc41|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(1));

-- Location: LCCOMB_X74_Y36_N12
\sc0|sc0|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~17_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc38|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc42|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc38|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc42|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux8~17_combout\);

-- Location: LCCOMB_X74_Y36_N8
\sc0|sc0|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~18_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux8~17_combout\ & (\sc0|sc37|qp\(1))) # (!\sc0|sc0|Mux8~17_combout\ & ((\sc0|sc41|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc37|qp\(1),
	datac => \sc0|sc41|qp\(1),
	datad => \sc0|sc0|Mux8~17_combout\,
	combout => \sc0|sc0|Mux8~18_combout\);

-- Location: FF_X74_Y36_N13
\sc0|sc43|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(1));

-- Location: FF_X74_Y36_N7
\sc0|sc44|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(1));

-- Location: FF_X73_Y36_N11
\sc0|sc45|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(1));

-- Location: LCCOMB_X73_Y36_N2
\sc0|sc46|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc46|qp[1]~feeder_combout\ = \sc0|sc45|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc45|qp\(1),
	combout => \sc0|sc46|qp[1]~feeder_combout\);

-- Location: FF_X73_Y36_N3
\sc0|sc46|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc46|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(1));

-- Location: LCCOMB_X73_Y36_N6
\sc0|sc47|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc47|qp[1]~feeder_combout\ = \sc0|sc46|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc46|qp\(1),
	combout => \sc0|sc47|qp[1]~feeder_combout\);

-- Location: FF_X73_Y36_N7
\sc0|sc47|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc47|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(1));

-- Location: LCCOMB_X73_Y36_N14
\sc0|sc48|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[1]~feeder_combout\ = \sc0|sc47|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(1),
	combout => \sc0|sc48|qp[1]~feeder_combout\);

-- Location: FF_X73_Y36_N15
\sc0|sc48|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(1));

-- Location: FF_X73_Y36_N9
\sc0|sc49|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(1));

-- Location: FF_X73_Y36_N25
\sc0|sc50|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(1));

-- Location: LCCOMB_X73_Y36_N24
\sc0|sc0|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc49|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc50|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc49|qp\(1),
	datac => \sc0|sc50|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux8~10_combout\);

-- Location: LCCOMB_X73_Y36_N10
\sc0|sc0|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux8~10_combout\ & ((\sc0|sc45|qp\(1)))) # (!\sc0|sc0|Mux8~10_combout\ & (\sc0|sc46|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc46|qp\(1),
	datac => \sc0|sc45|qp\(1),
	datad => \sc0|sc0|Mux8~10_combout\,
	combout => \sc0|sc0|Mux8~11_combout\);

-- Location: LCCOMB_X74_Y36_N30
\sc0|sc0|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~12_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc40|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc44|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc44|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc40|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux8~12_combout\);

-- Location: LCCOMB_X74_Y36_N14
\sc0|sc0|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux8~12_combout\ & ((\sc0|sc39|qp\(1)))) # (!\sc0|sc0|Mux8~12_combout\ & (\sc0|sc43|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc39|qp\(1),
	datad => \sc0|sc0|Mux8~12_combout\,
	combout => \sc0|sc0|Mux8~13_combout\);

-- Location: FF_X73_Y36_N31
\sc0|sc51|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc50|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(1));

-- Location: FF_X73_Y36_N17
\sc0|sc52|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(1));

-- Location: LCCOMB_X73_Y36_N16
\sc0|sc0|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux8~14_combout\);

-- Location: LCCOMB_X73_Y36_N8
\sc0|sc0|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux8~14_combout\ & (\sc0|sc47|qp\(1))) # (!\sc0|sc0|Mux8~14_combout\ & ((\sc0|sc48|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc47|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc48|qp\(1),
	datad => \sc0|sc0|Mux8~14_combout\,
	combout => \sc0|sc0|Mux8~15_combout\);

-- Location: LCCOMB_X73_Y39_N24
\sc0|sc0|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~16_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1)) # ((\sc0|sc0|Mux8~13_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux8~13_combout\,
	datad => \sc0|sc0|Mux8~15_combout\,
	combout => \sc0|sc0|Mux8~16_combout\);

-- Location: LCCOMB_X73_Y39_N10
\sc0|sc0|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~19_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux8~16_combout\ & (\sc0|sc0|Mux8~18_combout\)) # (!\sc0|sc0|Mux8~16_combout\ & ((\sc0|sc0|Mux8~11_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux8~18_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux8~11_combout\,
	datad => \sc0|sc0|Mux8~16_combout\,
	combout => \sc0|sc0|Mux8~19_combout\);

-- Location: LCCOMB_X73_Y39_N0
\sc0|sc0|Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux8~9_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux8~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc0|Mux8~9_combout\,
	datad => \sc0|sc0|Mux8~19_combout\,
	combout => \sc0|sc0|Mux8~20_combout\);

-- Location: LCCOMB_X73_Y39_N14
\sc0|sc0|Mux8~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~33_combout\ = (\sc0|sc0|Mux8~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux8~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc0|Mux8~32_combout\,
	datad => \sc0|sc0|Mux8~20_combout\,
	combout => \sc0|sc0|Mux8~33_combout\);

-- Location: IOIBUF_X109_Y0_N8
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: FF_X72_Y36_N27
\sc1|c0|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[2]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(2));

-- Location: FF_X72_Y36_N13
\sc0|sc3|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(2));

-- Location: LCCOMB_X70_Y36_N24
\sc0|sc4|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[2]~feeder_combout\ = \sc0|sc3|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(2),
	combout => \sc0|sc4|qp[2]~feeder_combout\);

-- Location: FF_X70_Y36_N25
\sc0|sc4|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(2));

-- Location: FF_X72_Y36_N25
\sc0|sc5|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(2));

-- Location: LCCOMB_X70_Y36_N8
\sc0|sc6|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc6|qp[2]~feeder_combout\ = \sc0|sc5|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc5|qp\(2),
	combout => \sc0|sc6|qp[2]~feeder_combout\);

-- Location: FF_X70_Y36_N9
\sc0|sc6|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc6|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(2));

-- Location: FF_X72_Y36_N11
\sc0|sc7|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(2));

-- Location: LCCOMB_X73_Y36_N28
\sc0|sc8|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc8|qp[2]~feeder_combout\ = \sc0|sc7|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc7|qp\(2),
	combout => \sc0|sc8|qp[2]~feeder_combout\);

-- Location: FF_X73_Y36_N29
\sc0|sc8|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc8|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(2));

-- Location: LCCOMB_X73_Y36_N4
\sc0|sc9|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc9|qp[2]~feeder_combout\ = \sc0|sc8|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc8|qp\(2),
	combout => \sc0|sc9|qp[2]~feeder_combout\);

-- Location: FF_X73_Y36_N5
\sc0|sc9|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc9|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(2));

-- Location: FF_X73_Y36_N23
\sc0|sc10|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(2));

-- Location: FF_X73_Y36_N27
\sc0|sc11|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc10|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(2));

-- Location: FF_X73_Y36_N19
\sc0|sc12|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(2));

-- Location: FF_X72_Y36_N9
\sc0|sc13|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc12|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(2));

-- Location: LCCOMB_X70_Y36_N14
\sc0|sc14|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[2]~feeder_combout\ = \sc0|sc13|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(2),
	combout => \sc0|sc14|qp[2]~feeder_combout\);

-- Location: FF_X70_Y36_N15
\sc0|sc14|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(2));

-- Location: FF_X72_Y36_N17
\sc0|sc15|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(2));

-- Location: FF_X73_Y36_N13
\sc0|sc16|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc15|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(2));

-- Location: LCCOMB_X73_Y36_N0
\sc0|sc17|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc17|qp[2]~feeder_combout\ = \sc0|sc16|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc16|qp\(2),
	combout => \sc0|sc17|qp[2]~feeder_combout\);

-- Location: FF_X73_Y36_N1
\sc0|sc17|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc17|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(2));

-- Location: FF_X72_Y36_N23
\sc0|sc18|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(2));

-- Location: FF_X72_Y36_N5
\sc0|sc19|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(2));

-- Location: FF_X72_Y36_N1
\sc0|sc20|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc19|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(2));

-- Location: FF_X76_Y36_N23
\sc0|sc21|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(2));

-- Location: FF_X76_Y36_N13
\sc0|sc22|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc21|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(2));

-- Location: FF_X76_Y36_N7
\sc0|sc23|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(2));

-- Location: LCCOMB_X76_Y36_N26
\sc0|sc24|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc24|qp[2]~feeder_combout\ = \sc0|sc23|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc23|qp\(2),
	combout => \sc0|sc24|qp[2]~feeder_combout\);

-- Location: FF_X76_Y36_N27
\sc0|sc24|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc24|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(2));

-- Location: FF_X76_Y36_N29
\sc0|sc25|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(2));

-- Location: LCCOMB_X76_Y36_N8
\sc0|sc26|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[2]~feeder_combout\ = \sc0|sc25|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(2),
	combout => \sc0|sc26|qp[2]~feeder_combout\);

-- Location: FF_X76_Y36_N9
\sc0|sc26|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(2));

-- Location: FF_X76_Y36_N15
\sc0|sc27|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(2));

-- Location: FF_X76_Y36_N11
\sc0|sc28|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(2));

-- Location: FF_X76_Y36_N17
\sc0|sc29|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(2));

-- Location: LCCOMB_X76_Y36_N4
\sc0|sc30|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc30|qp[2]~feeder_combout\ = \sc0|sc29|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc29|qp\(2),
	combout => \sc0|sc30|qp[2]~feeder_combout\);

-- Location: FF_X76_Y36_N5
\sc0|sc30|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc30|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(2));

-- Location: FF_X76_Y36_N25
\sc0|sc31|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(2));

-- Location: LCCOMB_X76_Y36_N16
\sc0|sc0|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc29|qp\(2)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc31|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc31|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc29|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux7~7_combout\);

-- Location: LCCOMB_X76_Y36_N6
\sc0|sc0|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux7~7_combout\ & (\sc0|sc21|qp\(2))) # (!\sc0|sc0|Mux7~7_combout\ & ((\sc0|sc23|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc21|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc23|qp\(2),
	datad => \sc0|sc0|Mux7~7_combout\,
	combout => \sc0|sc0|Mux7~8_combout\);

-- Location: FF_X76_Y36_N31
\sc0|sc32|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc31|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(2));

-- Location: FF_X76_Y36_N19
\sc0|sc33|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(2));

-- Location: LCCOMB_X76_Y36_N0
\sc0|sc34|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc34|qp[2]~feeder_combout\ = \sc0|sc33|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc33|qp\(2),
	combout => \sc0|sc34|qp[2]~feeder_combout\);

-- Location: FF_X76_Y36_N1
\sc0|sc34|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc34|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(2));

-- Location: FF_X76_Y36_N21
\sc0|sc35|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(2));

-- Location: LCCOMB_X76_Y36_N20
\sc0|sc0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc27|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc35|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc27|qp\(2),
	datac => \sc0|sc35|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux7~0_combout\);

-- Location: LCCOMB_X76_Y36_N18
\sc0|sc0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux7~0_combout\ & (\sc0|sc25|qp\(2))) # (!\sc0|sc0|Mux7~0_combout\ & ((\sc0|sc33|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc25|qp\(2),
	datac => \sc0|sc33|qp\(2),
	datad => \sc0|sc0|Mux7~0_combout\,
	combout => \sc0|sc0|Mux7~1_combout\);

-- Location: LCCOMB_X76_Y36_N24
\sc0|sc0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc30|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc32|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc30|qp\(2),
	datad => \sc0|sc32|qp\(2),
	combout => \sc0|sc0|Mux7~2_combout\);

-- Location: LCCOMB_X76_Y36_N28
\sc0|sc0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~3_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux7~2_combout\ & (\sc0|sc22|qp\(2))) # (!\sc0|sc0|Mux7~2_combout\ & ((\sc0|sc24|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc24|qp\(2),
	datad => \sc0|sc0|Mux7~2_combout\,
	combout => \sc0|sc0|Mux7~3_combout\);

-- Location: LCCOMB_X76_Y36_N2
\sc0|sc36|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc36|qp[2]~feeder_combout\ = \sc0|sc35|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc35|qp\(2),
	combout => \sc0|sc36|qp[2]~feeder_combout\);

-- Location: FF_X76_Y36_N3
\sc0|sc36|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc36|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(2));

-- Location: LCCOMB_X76_Y36_N10
\sc0|sc0|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~4_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc28|qp\(2)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc36|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc36|qp\(2),
	datac => \sc0|sc28|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux7~4_combout\);

-- Location: LCCOMB_X76_Y36_N14
\sc0|sc0|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~5_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux7~4_combout\ & ((\sc0|sc26|qp\(2)))) # (!\sc0|sc0|Mux7~4_combout\ & (\sc0|sc34|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc34|qp\(2),
	datac => \sc0|sc26|qp\(2),
	datad => \sc0|sc0|Mux7~4_combout\,
	combout => \sc0|sc0|Mux7~5_combout\);

-- Location: LCCOMB_X72_Y36_N18
\sc0|sc0|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~6_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc0|Mux7~3_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux7~3_combout\,
	datad => \sc0|sc0|Mux7~5_combout\,
	combout => \sc0|sc0|Mux7~6_combout\);

-- Location: LCCOMB_X72_Y36_N14
\sc0|sc0|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux7~6_combout\ & (\sc0|sc0|Mux7~8_combout\)) # (!\sc0|sc0|Mux7~6_combout\ & ((\sc0|sc0|Mux7~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux7~8_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux7~1_combout\,
	datad => \sc0|sc0|Mux7~6_combout\,
	combout => \sc0|sc0|Mux7~9_combout\);

-- Location: LCCOMB_X75_Y36_N8
\sc0|sc37|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[2]~feeder_combout\ = \sc0|sc36|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(2),
	combout => \sc0|sc37|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N9
\sc0|sc37|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(2));

-- Location: FF_X75_Y36_N19
\sc0|sc38|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc37|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(2));

-- Location: LCCOMB_X73_Y36_N20
\sc0|sc39|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc39|qp[2]~feeder_combout\ = \sc0|sc38|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc38|qp\(2),
	combout => \sc0|sc39|qp[2]~feeder_combout\);

-- Location: FF_X73_Y36_N21
\sc0|sc39|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc39|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(2));

-- Location: FF_X72_Y36_N7
\sc0|sc40|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(2));

-- Location: LCCOMB_X75_Y36_N16
\sc0|sc41|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc41|qp[2]~feeder_combout\ = \sc0|sc40|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc40|qp\(2),
	combout => \sc0|sc41|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N17
\sc0|sc41|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc41|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(2));

-- Location: LCCOMB_X75_Y36_N20
\sc0|sc42|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[2]~feeder_combout\ = \sc0|sc41|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(2),
	combout => \sc0|sc42|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N21
\sc0|sc42|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(2));

-- Location: FF_X75_Y36_N31
\sc0|sc43|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(2));

-- Location: FF_X75_Y36_N27
\sc0|sc44|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(2));

-- Location: LCCOMB_X75_Y36_N26
\sc0|sc0|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc43|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc44|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc44|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~10_combout\);

-- Location: LCCOMB_X72_Y36_N6
\sc0|sc0|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~10_combout\ & (\sc0|sc39|qp\(2))) # (!\sc0|sc0|Mux7~10_combout\ & ((\sc0|sc40|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc39|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc40|qp\(2),
	datad => \sc0|sc0|Mux7~10_combout\,
	combout => \sc0|sc0|Mux7~11_combout\);

-- Location: LCCOMB_X75_Y36_N30
\sc0|sc0|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~17_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2)) # ((\sc0|sc41|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc42|qp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc42|qp\(2),
	datad => \sc0|sc41|qp\(2),
	combout => \sc0|sc0|Mux7~17_combout\);

-- Location: LCCOMB_X75_Y36_N18
\sc0|sc0|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~17_combout\ & (\sc0|sc37|qp\(2))) # (!\sc0|sc0|Mux7~17_combout\ & ((\sc0|sc38|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc37|qp\(2),
	datac => \sc0|sc38|qp\(2),
	datad => \sc0|sc0|Mux7~17_combout\,
	combout => \sc0|sc0|Mux7~18_combout\);

-- Location: FF_X75_Y36_N7
\sc0|sc45|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(2));

-- Location: LCCOMB_X75_Y36_N4
\sc0|sc46|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc46|qp[2]~feeder_combout\ = \sc0|sc45|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc45|qp\(2),
	combout => \sc0|sc46|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N5
\sc0|sc46|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc46|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(2));

-- Location: FF_X75_Y36_N25
\sc0|sc47|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(2));

-- Location: LCCOMB_X75_Y36_N2
\sc0|sc48|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[2]~feeder_combout\ = \sc0|sc47|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(2),
	combout => \sc0|sc48|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N3
\sc0|sc48|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(2));

-- Location: FF_X75_Y36_N23
\sc0|sc49|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(2));

-- Location: LCCOMB_X75_Y36_N12
\sc0|sc50|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc50|qp[2]~feeder_combout\ = \sc0|sc49|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc49|qp\(2),
	combout => \sc0|sc50|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N13
\sc0|sc50|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc50|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(2));

-- Location: LCCOMB_X75_Y36_N10
\sc0|sc51|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[2]~feeder_combout\ = \sc0|sc50|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(2),
	combout => \sc0|sc51|qp[2]~feeder_combout\);

-- Location: FF_X75_Y36_N11
\sc0|sc51|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(2));

-- Location: FF_X75_Y36_N1
\sc0|sc52|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(2));

-- Location: LCCOMB_X75_Y36_N0
\sc0|sc0|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~14_combout\);

-- Location: LCCOMB_X75_Y36_N22
\sc0|sc0|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~14_combout\ & (\sc0|sc47|qp\(2))) # (!\sc0|sc0|Mux7~14_combout\ & ((\sc0|sc48|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc47|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc48|qp\(2),
	datad => \sc0|sc0|Mux7~14_combout\,
	combout => \sc0|sc0|Mux7~15_combout\);

-- Location: LCCOMB_X75_Y36_N28
\sc0|sc0|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~12_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc46|qp\(2)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc50|qp\(2) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc50|qp\(2),
	datab => \sc0|sc46|qp\(2),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~12_combout\);

-- Location: LCCOMB_X75_Y36_N6
\sc0|sc0|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux7~12_combout\ & ((\sc0|sc45|qp\(2)))) # (!\sc0|sc0|Mux7~12_combout\ & (\sc0|sc49|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc49|qp\(2),
	datac => \sc0|sc45|qp\(2),
	datad => \sc0|sc0|Mux7~12_combout\,
	combout => \sc0|sc0|Mux7~13_combout\);

-- Location: LCCOMB_X75_Y36_N14
\sc0|sc0|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~16_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux7~13_combout\))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc0|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux7~15_combout\,
	datad => \sc0|sc0|Mux7~13_combout\,
	combout => \sc0|sc0|Mux7~16_combout\);

-- Location: LCCOMB_X72_Y36_N28
\sc0|sc0|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~19_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux7~16_combout\ & ((\sc0|sc0|Mux7~18_combout\))) # (!\sc0|sc0|Mux7~16_combout\ & (\sc0|sc0|Mux7~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux7~11_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux7~18_combout\,
	datad => \sc0|sc0|Mux7~16_combout\,
	combout => \sc0|sc0|Mux7~19_combout\);

-- Location: LCCOMB_X72_Y36_N30
\sc0|sc0|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux7~9_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux7~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc0|Mux7~9_combout\,
	datad => \sc0|sc0|Mux7~19_combout\,
	combout => \sc0|sc0|Mux7~20_combout\);

-- Location: LCCOMB_X73_Y36_N18
\sc0|sc0|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~21_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc11|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc12|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc11|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc12|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~21_combout\);

-- Location: LCCOMB_X72_Y36_N10
\sc0|sc0|Mux7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~22_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~21_combout\ & ((\sc0|sc7|qp\(2)))) # (!\sc0|sc0|Mux7~21_combout\ & (\sc0|sc8|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc8|qp\(2),
	datac => \sc0|sc7|qp\(2),
	datad => \sc0|sc0|Mux7~21_combout\,
	combout => \sc0|sc0|Mux7~22_combout\);

-- Location: LCCOMB_X73_Y36_N26
\sc0|sc0|Mux7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~28_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc9|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc10|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc10|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~28_combout\);

-- Location: LCCOMB_X72_Y36_N24
\sc0|sc0|Mux7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~29_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~28_combout\ & ((\sc0|sc5|qp\(2)))) # (!\sc0|sc0|Mux7~28_combout\ & (\sc0|sc6|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc6|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc5|qp\(2),
	datad => \sc0|sc0|Mux7~28_combout\,
	combout => \sc0|sc0|Mux7~29_combout\);

-- Location: LCCOMB_X72_Y36_N22
\sc0|sc0|Mux7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~23_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc14|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc18|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc14|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc18|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux7~23_combout\);

-- Location: LCCOMB_X72_Y36_N8
\sc0|sc0|Mux7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~24_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux7~23_combout\ & ((\sc0|sc13|qp\(2)))) # (!\sc0|sc0|Mux7~23_combout\ & (\sc0|sc17|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux7~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc17|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc13|qp\(2),
	datad => \sc0|sc0|Mux7~23_combout\,
	combout => \sc0|sc0|Mux7~24_combout\);

-- Location: LCCOMB_X72_Y36_N0
\sc0|sc0|Mux7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~25_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc19|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc20|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc19|qp\(2),
	datac => \sc0|sc20|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~25_combout\);

-- Location: LCCOMB_X72_Y36_N16
\sc0|sc0|Mux7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~26_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux7~25_combout\ & ((\sc0|sc15|qp\(2)))) # (!\sc0|sc0|Mux7~25_combout\ & (\sc0|sc16|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc16|qp\(2),
	datac => \sc0|sc15|qp\(2),
	datad => \sc0|sc0|Mux7~25_combout\,
	combout => \sc0|sc0|Mux7~26_combout\);

-- Location: LCCOMB_X72_Y36_N2
\sc0|sc0|Mux7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~27_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc0|Mux7~24_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux7~24_combout\,
	datad => \sc0|sc0|Mux7~26_combout\,
	combout => \sc0|sc0|Mux7~27_combout\);

-- Location: LCCOMB_X72_Y36_N20
\sc0|sc0|Mux7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~30_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux7~27_combout\ & ((\sc0|sc0|Mux7~29_combout\))) # (!\sc0|sc0|Mux7~27_combout\ & (\sc0|sc0|Mux7~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux7~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux7~22_combout\,
	datab => \sc0|sc0|Mux7~29_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux7~27_combout\,
	combout => \sc0|sc0|Mux7~30_combout\);

-- Location: LCCOMB_X72_Y36_N26
\sc0|sc0|Mux7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(2))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux7~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(2),
	datad => \sc0|sc0|Mux7~30_combout\,
	combout => \sc0|sc0|Mux7~31_combout\);

-- Location: LCCOMB_X72_Y36_N12
\sc0|sc0|Mux7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux7~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux7~31_combout\ & (\sc0|sc4|qp\(2))) # (!\sc0|sc0|Mux7~31_combout\ & ((\sc0|sc3|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(2),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(2),
	datad => \sc0|sc0|Mux7~31_combout\,
	combout => \sc0|sc0|Mux7~32_combout\);

-- Location: LCCOMB_X72_Y36_N4
\sc0|sc0|Mux7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~33_combout\ = (\sc0|sc0|Mux7~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux7~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux7~20_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux7~32_combout\,
	combout => \sc0|sc0|Mux7~33_combout\);

-- Location: IOIBUF_X96_Y0_N22
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: FF_X74_Y39_N5
\sc1|c0|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[3]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(3));

-- Location: FF_X74_Y39_N15
\sc0|sc3|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(3));

-- Location: FF_X74_Y39_N9
\sc0|sc4|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(3));

-- Location: FF_X74_Y39_N23
\sc0|sc5|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(3));

-- Location: FF_X74_Y39_N7
\sc0|sc6|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(3));

-- Location: FF_X72_Y39_N13
\sc0|sc7|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(3));

-- Location: FF_X72_Y39_N19
\sc0|sc8|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(3));

-- Location: LCCOMB_X74_Y36_N28
\sc0|sc9|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc9|qp[3]~feeder_combout\ = \sc0|sc8|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc8|qp\(3),
	combout => \sc0|sc9|qp[3]~feeder_combout\);

-- Location: FF_X74_Y36_N29
\sc0|sc9|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc9|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(3));

-- Location: FF_X74_Y39_N1
\sc0|sc10|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(3));

-- Location: FF_X74_Y36_N17
\sc0|sc11|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc10|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(3));

-- Location: FF_X74_Y39_N21
\sc0|sc12|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(3));

-- Location: FF_X74_Y36_N11
\sc0|sc13|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc12|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(3));

-- Location: LCCOMB_X74_Y36_N18
\sc0|sc14|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[3]~feeder_combout\ = \sc0|sc13|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(3),
	combout => \sc0|sc14|qp[3]~feeder_combout\);

-- Location: FF_X74_Y36_N19
\sc0|sc14|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(3));

-- Location: LCCOMB_X74_Y36_N2
\sc0|sc15|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc15|qp[3]~feeder_combout\ = \sc0|sc14|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc14|qp\(3),
	combout => \sc0|sc15|qp[3]~feeder_combout\);

-- Location: FF_X74_Y36_N3
\sc0|sc15|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc15|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(3));

-- Location: FF_X74_Y39_N19
\sc0|sc16|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc15|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(3));

-- Location: LCCOMB_X74_Y39_N18
\sc0|sc0|Mux6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~27_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc14|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc16|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc14|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc16|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~27_combout\);

-- Location: LCCOMB_X74_Y39_N6
\sc0|sc0|Mux6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~28_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux6~27_combout\ & ((\sc0|sc6|qp\(3)))) # (!\sc0|sc0|Mux6~27_combout\ & (\sc0|sc8|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux6~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc8|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc6|qp\(3),
	datad => \sc0|sc0|Mux6~27_combout\,
	combout => \sc0|sc0|Mux6~28_combout\);

-- Location: FF_X74_Y36_N21
\sc0|sc17|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc16|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(3));

-- Location: FF_X74_Y36_N1
\sc0|sc18|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(3));

-- Location: LCCOMB_X74_Y36_N22
\sc0|sc19|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc19|qp[3]~feeder_combout\ = \sc0|sc18|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc18|qp\(3),
	combout => \sc0|sc19|qp[3]~feeder_combout\);

-- Location: FF_X74_Y36_N23
\sc0|sc19|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc19|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(3));

-- Location: LCCOMB_X74_Y39_N30
\sc0|sc20|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc20|qp[3]~feeder_combout\ = \sc0|sc19|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc19|qp\(3),
	combout => \sc0|sc20|qp[3]~feeder_combout\);

-- Location: FF_X74_Y39_N31
\sc0|sc20|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc20|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(3));

-- Location: LCCOMB_X74_Y39_N20
\sc0|sc0|Mux6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~29_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc12|qp\(3)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc20|qp\(3) & ((!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc20|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc12|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~29_combout\);

-- Location: LCCOMB_X74_Y39_N0
\sc0|sc0|Mux6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~30_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux6~29_combout\ & ((\sc0|sc10|qp\(3)))) # (!\sc0|sc0|Mux6~29_combout\ & (\sc0|sc18|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux6~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc18|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc10|qp\(3),
	datad => \sc0|sc0|Mux6~29_combout\,
	combout => \sc0|sc0|Mux6~30_combout\);

-- Location: LCCOMB_X74_Y39_N2
\sc0|sc0|Mux6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~31_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux6~28_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux6~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~28_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc0|Mux6~30_combout\,
	combout => \sc0|sc0|Mux6~31_combout\);

-- Location: LCCOMB_X74_Y36_N10
\sc0|sc0|Mux6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~32_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc13|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc15|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc15|qp\(3),
	datac => \sc0|sc13|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~32_combout\);

-- Location: LCCOMB_X74_Y39_N22
\sc0|sc0|Mux6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~33_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux6~32_combout\ & ((\sc0|sc5|qp\(3)))) # (!\sc0|sc0|Mux6~32_combout\ & (\sc0|sc7|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux6~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc7|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc5|qp\(3),
	datad => \sc0|sc0|Mux6~32_combout\,
	combout => \sc0|sc0|Mux6~33_combout\);

-- Location: LCCOMB_X74_Y36_N16
\sc0|sc0|Mux6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~25_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc11|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc19|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc19|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc11|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux6~25_combout\);

-- Location: LCCOMB_X74_Y36_N20
\sc0|sc0|Mux6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~26_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux6~25_combout\ & (\sc0|sc9|qp\(3))) # (!\sc0|sc0|Mux6~25_combout\ & ((\sc0|sc17|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux6~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc17|qp\(3),
	datad => \sc0|sc0|Mux6~25_combout\,
	combout => \sc0|sc0|Mux6~26_combout\);

-- Location: LCCOMB_X74_Y39_N10
\sc0|sc0|Mux6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~34_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux6~31_combout\ & (\sc0|sc0|Mux6~33_combout\)) # (!\sc0|sc0|Mux6~31_combout\ & ((\sc0|sc0|Mux6~26_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc0|Mux6~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux6~31_combout\,
	datac => \sc0|sc0|Mux6~33_combout\,
	datad => \sc0|sc0|Mux6~26_combout\,
	combout => \sc0|sc0|Mux6~34_combout\);

-- Location: LCCOMB_X74_Y39_N4
\sc0|sc0|Mux6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~35_combout\ = (\sc0|sc0|Mux6~3_combout\ & (\sc0|sc0|Mux6~2_combout\ & (\sc1|c0|qp\(3)))) # (!\sc0|sc0|Mux6~3_combout\ & (((\sc0|sc0|Mux6~34_combout\)) # (!\sc0|sc0|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~3_combout\,
	datab => \sc0|sc0|Mux6~2_combout\,
	datac => \sc1|c0|qp\(3),
	datad => \sc0|sc0|Mux6~34_combout\,
	combout => \sc0|sc0|Mux6~35_combout\);

-- Location: LCCOMB_X74_Y39_N14
\sc0|sc0|Mux6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~36_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux6~35_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux6~35_combout\ & (\sc0|sc4|qp\(3))) # (!\sc0|sc0|Mux6~35_combout\ & ((\sc0|sc3|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~0_combout\,
	datab => \sc0|sc4|qp\(3),
	datac => \sc0|sc3|qp\(3),
	datad => \sc0|sc0|Mux6~35_combout\,
	combout => \sc0|sc0|Mux6~36_combout\);

-- Location: LCCOMB_X75_Y35_N22
\sc0|sc21|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc21|qp[3]~feeder_combout\ = \sc0|sc20|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc20|qp\(3),
	combout => \sc0|sc21|qp[3]~feeder_combout\);

-- Location: FF_X75_Y35_N23
\sc0|sc21|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc21|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(3));

-- Location: FF_X75_Y35_N27
\sc0|sc22|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc21|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(3));

-- Location: FF_X75_Y35_N13
\sc0|sc23|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(3));

-- Location: FF_X75_Y35_N11
\sc0|sc24|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc23|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(3));

-- Location: FF_X75_Y35_N9
\sc0|sc25|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(3));

-- Location: FF_X75_Y35_N31
\sc0|sc26|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc25|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(3));

-- Location: FF_X75_Y35_N19
\sc0|sc27|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(3));

-- Location: LCCOMB_X75_Y35_N24
\sc0|sc28|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc28|qp[3]~feeder_combout\ = \sc0|sc27|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc27|qp\(3),
	combout => \sc0|sc28|qp[3]~feeder_combout\);

-- Location: FF_X75_Y35_N25
\sc0|sc28|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc28|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(3));

-- Location: FF_X75_Y35_N15
\sc0|sc29|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(3));

-- Location: FF_X75_Y35_N29
\sc0|sc30|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc29|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(3));

-- Location: LCCOMB_X75_Y35_N16
\sc0|sc31|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc31|qp[3]~feeder_combout\ = \sc0|sc30|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc30|qp\(3),
	combout => \sc0|sc31|qp[3]~feeder_combout\);

-- Location: FF_X75_Y35_N17
\sc0|sc31|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc31|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(3));

-- Location: LCCOMB_X75_Y35_N4
\sc0|sc32|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc32|qp[3]~feeder_combout\ = \sc0|sc31|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc31|qp\(3),
	combout => \sc0|sc32|qp[3]~feeder_combout\);

-- Location: FF_X75_Y35_N5
\sc0|sc32|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc32|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(3));

-- Location: FF_X75_Y35_N21
\sc0|sc33|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(3));

-- Location: FF_X75_Y35_N1
\sc0|sc34|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc33|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(3));

-- Location: FF_X75_Y35_N3
\sc0|sc35|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(3));

-- Location: FF_X75_Y35_N7
\sc0|sc36|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc35|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(3));

-- Location: LCCOMB_X74_Y41_N10
\sc0|sc37|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[3]~feeder_combout\ = \sc0|sc36|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(3),
	combout => \sc0|sc37|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N11
\sc0|sc37|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(3));

-- Location: LCCOMB_X74_Y41_N6
\sc0|sc38|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[3]~feeder_combout\ = \sc0|sc37|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(3),
	combout => \sc0|sc38|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N7
\sc0|sc38|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(3));

-- Location: FF_X74_Y41_N1
\sc0|sc39|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(3));

-- Location: LCCOMB_X74_Y41_N26
\sc0|sc40|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc40|qp[3]~feeder_combout\ = \sc0|sc39|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc39|qp\(3),
	combout => \sc0|sc40|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N27
\sc0|sc40|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc40|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(3));

-- Location: FF_X74_Y41_N13
\sc0|sc41|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(3));

-- Location: LCCOMB_X74_Y41_N16
\sc0|sc42|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[3]~feeder_combout\ = \sc0|sc41|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(3),
	combout => \sc0|sc42|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N17
\sc0|sc42|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(3));

-- Location: LCCOMB_X74_Y41_N2
\sc0|sc0|Mux6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~21_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc38|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc42|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc38|qp\(3),
	datac => \sc0|sc42|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux6~21_combout\);

-- Location: LCCOMB_X74_Y41_N12
\sc0|sc0|Mux6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~22_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux6~21_combout\ & (\sc0|sc37|qp\(3))) # (!\sc0|sc0|Mux6~21_combout\ & ((\sc0|sc41|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc37|qp\(3),
	datac => \sc0|sc41|qp\(3),
	datad => \sc0|sc0|Mux6~21_combout\,
	combout => \sc0|sc0|Mux6~22_combout\);

-- Location: FF_X74_Y41_N3
\sc0|sc43|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(3));

-- Location: FF_X74_Y41_N31
\sc0|sc44|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(3));

-- Location: FF_X74_Y41_N9
\sc0|sc45|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(3));

-- Location: FF_X74_Y41_N19
\sc0|sc46|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(3));

-- Location: LCCOMB_X74_Y41_N20
\sc0|sc47|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc47|qp[3]~feeder_combout\ = \sc0|sc46|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc46|qp\(3),
	combout => \sc0|sc47|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N21
\sc0|sc47|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc47|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(3));

-- Location: LCCOMB_X74_Y41_N4
\sc0|sc48|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[3]~feeder_combout\ = \sc0|sc47|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(3),
	combout => \sc0|sc48|qp[3]~feeder_combout\);

-- Location: FF_X74_Y41_N5
\sc0|sc48|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(3));

-- Location: FF_X74_Y41_N23
\sc0|sc49|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(3));

-- Location: FF_X74_Y41_N25
\sc0|sc50|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(3));

-- Location: LCCOMB_X74_Y41_N24
\sc0|sc0|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc49|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc50|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc49|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc50|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux6~14_combout\);

-- Location: LCCOMB_X74_Y41_N18
\sc0|sc0|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux6~14_combout\ & (\sc0|sc45|qp\(3))) # (!\sc0|sc0|Mux6~14_combout\ & ((\sc0|sc46|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc45|qp\(3),
	datac => \sc0|sc46|qp\(3),
	datad => \sc0|sc0|Mux6~14_combout\,
	combout => \sc0|sc0|Mux6~15_combout\);

-- Location: LCCOMB_X74_Y41_N8
\sc0|sc0|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~16_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc40|qp\(3)) # ((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc44|qp\(3) & !\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc40|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc44|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux6~16_combout\);

-- Location: LCCOMB_X74_Y41_N0
\sc0|sc0|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~17_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux6~16_combout\ & ((\sc0|sc39|qp\(3)))) # (!\sc0|sc0|Mux6~16_combout\ & (\sc0|sc43|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc43|qp\(3),
	datac => \sc0|sc39|qp\(3),
	datad => \sc0|sc0|Mux6~16_combout\,
	combout => \sc0|sc0|Mux6~17_combout\);

-- Location: FF_X74_Y41_N15
\sc0|sc51|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc50|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(3));

-- Location: FF_X74_Y41_N29
\sc0|sc52|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(3));

-- Location: LCCOMB_X74_Y41_N28
\sc0|sc0|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc51|qp\(3),
	datac => \sc0|sc52|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux6~18_combout\);

-- Location: LCCOMB_X74_Y41_N22
\sc0|sc0|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~19_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux6~18_combout\ & (\sc0|sc47|qp\(3))) # (!\sc0|sc0|Mux6~18_combout\ & ((\sc0|sc48|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(3),
	datac => \sc0|sc48|qp\(3),
	datad => \sc0|sc0|Mux6~18_combout\,
	combout => \sc0|sc0|Mux6~19_combout\);

-- Location: LCCOMB_X74_Y39_N12
\sc0|sc0|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~20_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux6~17_combout\)) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux6~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux6~17_combout\,
	datad => \sc0|sc0|Mux6~19_combout\,
	combout => \sc0|sc0|Mux6~20_combout\);

-- Location: LCCOMB_X74_Y39_N26
\sc0|sc0|Mux6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~23_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux6~20_combout\ & (\sc0|sc0|Mux6~22_combout\)) # (!\sc0|sc0|Mux6~20_combout\ & ((\sc0|sc0|Mux6~15_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~22_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux6~15_combout\,
	datad => \sc0|sc0|Mux6~20_combout\,
	combout => \sc0|sc0|Mux6~23_combout\);

-- Location: LCCOMB_X75_Y35_N2
\sc0|sc0|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc33|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc35|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc33|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc35|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~4_combout\);

-- Location: LCCOMB_X75_Y35_N8
\sc0|sc0|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~5_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux6~4_combout\ & ((\sc0|sc25|qp\(3)))) # (!\sc0|sc0|Mux6~4_combout\ & (\sc0|sc27|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc27|qp\(3),
	datac => \sc0|sc25|qp\(3),
	datad => \sc0|sc0|Mux6~4_combout\,
	combout => \sc0|sc0|Mux6~5_combout\);

-- Location: LCCOMB_X75_Y35_N12
\sc0|sc0|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~11_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc23|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc31|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc31|qp\(3),
	datac => \sc0|sc23|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux6~11_combout\);

-- Location: LCCOMB_X75_Y35_N14
\sc0|sc0|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~12_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux6~11_combout\ & (\sc0|sc21|qp\(3))) # (!\sc0|sc0|Mux6~11_combout\ & ((\sc0|sc29|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc21|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc29|qp\(3),
	datad => \sc0|sc0|Mux6~11_combout\,
	combout => \sc0|sc0|Mux6~12_combout\);

-- Location: LCCOMB_X75_Y35_N0
\sc0|sc0|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc34|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc36|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc36|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc34|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~8_combout\);

-- Location: LCCOMB_X75_Y35_N18
\sc0|sc0|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~9_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux6~8_combout\ & ((\sc0|sc26|qp\(3)))) # (!\sc0|sc0|Mux6~8_combout\ & (\sc0|sc28|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc28|qp\(3),
	datac => \sc0|sc26|qp\(3),
	datad => \sc0|sc0|Mux6~8_combout\,
	combout => \sc0|sc0|Mux6~9_combout\);

-- Location: LCCOMB_X75_Y35_N20
\sc0|sc0|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~6_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc24|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc32|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc24|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc32|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux6~6_combout\);

-- Location: LCCOMB_X75_Y35_N28
\sc0|sc0|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~7_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux6~6_combout\ & (\sc0|sc22|qp\(3))) # (!\sc0|sc0|Mux6~6_combout\ & ((\sc0|sc30|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(3),
	datad => \sc0|sc0|Mux6~6_combout\,
	combout => \sc0|sc0|Mux6~7_combout\);

-- Location: LCCOMB_X74_Y39_N16
\sc0|sc0|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~10_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux6~7_combout\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux6~9_combout\,
	datad => \sc0|sc0|Mux6~7_combout\,
	combout => \sc0|sc0|Mux6~10_combout\);

-- Location: LCCOMB_X74_Y39_N24
\sc0|sc0|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux6~10_combout\ & ((\sc0|sc0|Mux6~12_combout\))) # (!\sc0|sc0|Mux6~10_combout\ & (\sc0|sc0|Mux6~5_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux6~5_combout\,
	datac => \sc0|sc0|Mux6~12_combout\,
	datad => \sc0|sc0|Mux6~10_combout\,
	combout => \sc0|sc0|Mux6~13_combout\);

-- Location: LCCOMB_X74_Y39_N28
\sc0|sc0|Mux6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~24_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux6~13_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux6~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc0|Mux6~23_combout\,
	datad => \sc0|sc0|Mux6~13_combout\,
	combout => \sc0|sc0|Mux6~24_combout\);

-- Location: LCCOMB_X74_Y39_N8
\sc0|sc0|Mux6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~37_combout\ = (\sc0|sc0|Mux6~24_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux6~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc0|Mux6~36_combout\,
	datad => \sc0|sc0|Mux6~24_combout\,
	combout => \sc0|sc0|Mux6~37_combout\);

-- Location: IOIBUF_X102_Y0_N22
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: FF_X76_Y39_N31
\sc1|c0|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[4]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(4));

-- Location: FF_X76_Y39_N11
\sc0|sc3|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(4));

-- Location: LCCOMB_X77_Y39_N10
\sc0|sc4|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[4]~feeder_combout\ = \sc0|sc3|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(4),
	combout => \sc0|sc4|qp[4]~feeder_combout\);

-- Location: FF_X77_Y39_N11
\sc0|sc4|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(4));

-- Location: LCCOMB_X77_Y38_N8
\sc0|sc5|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|qp[4]~feeder_combout\ = \sc0|sc4|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc4|qp\(4),
	combout => \sc0|sc5|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N9
\sc0|sc5|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc5|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(4));

-- Location: FF_X77_Y38_N23
\sc0|sc6|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(4));

-- Location: FF_X76_Y39_N1
\sc0|sc7|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(4));

-- Location: FF_X80_Y39_N19
\sc0|sc8|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(4));

-- Location: LCCOMB_X77_Y38_N16
\sc0|sc9|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc9|qp[4]~feeder_combout\ = \sc0|sc8|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc8|qp\(4),
	combout => \sc0|sc9|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N17
\sc0|sc9|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc9|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(4));

-- Location: LCCOMB_X77_Y38_N24
\sc0|sc10|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc10|qp[4]~feeder_combout\ = \sc0|sc9|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc9|qp\(4),
	combout => \sc0|sc10|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N25
\sc0|sc10|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc10|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(4));

-- Location: LCCOMB_X80_Y39_N12
\sc0|sc11|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc11|qp[4]~feeder_combout\ = \sc0|sc10|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc10|qp\(4),
	combout => \sc0|sc11|qp[4]~feeder_combout\);

-- Location: FF_X80_Y39_N13
\sc0|sc11|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc11|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(4));

-- Location: FF_X76_Y39_N29
\sc0|sc12|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(4));

-- Location: LCCOMB_X77_Y38_N12
\sc0|sc13|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc13|qp[4]~feeder_combout\ = \sc0|sc12|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc12|qp\(4),
	combout => \sc0|sc13|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N13
\sc0|sc13|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc13|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(4));

-- Location: LCCOMB_X77_Y38_N4
\sc0|sc14|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[4]~feeder_combout\ = \sc0|sc13|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(4),
	combout => \sc0|sc14|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N5
\sc0|sc14|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(4));

-- Location: LCCOMB_X76_Y39_N22
\sc0|sc15|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc15|qp[4]~feeder_combout\ = \sc0|sc14|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc14|qp\(4),
	combout => \sc0|sc15|qp[4]~feeder_combout\);

-- Location: FF_X76_Y39_N23
\sc0|sc15|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc15|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(4));

-- Location: FF_X76_Y39_N3
\sc0|sc16|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc15|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(4));

-- Location: LCCOMB_X77_Y38_N30
\sc0|sc17|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc17|qp[4]~feeder_combout\ = \sc0|sc16|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc16|qp\(4),
	combout => \sc0|sc17|qp[4]~feeder_combout\);

-- Location: FF_X77_Y38_N31
\sc0|sc17|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc17|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(4));

-- Location: FF_X77_Y38_N29
\sc0|sc18|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(4));

-- Location: FF_X76_Y39_N21
\sc0|sc19|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(4));

-- Location: LCCOMB_X76_Y39_N18
\sc0|sc20|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc20|qp[4]~feeder_combout\ = \sc0|sc19|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc19|qp\(4),
	combout => \sc0|sc20|qp[4]~feeder_combout\);

-- Location: FF_X76_Y39_N19
\sc0|sc20|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc20|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(4));

-- Location: LCCOMB_X77_Y37_N16
\sc0|sc21|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc21|qp[4]~feeder_combout\ = \sc0|sc20|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc20|qp\(4),
	combout => \sc0|sc21|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N17
\sc0|sc21|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc21|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(4));

-- Location: LCCOMB_X77_Y37_N22
\sc0|sc22|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc22|qp[4]~feeder_combout\ = \sc0|sc21|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc21|qp\(4),
	combout => \sc0|sc22|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N23
\sc0|sc22|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc22|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(4));

-- Location: FF_X77_Y37_N13
\sc0|sc23|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(4));

-- Location: LCCOMB_X77_Y37_N26
\sc0|sc24|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc24|qp[4]~feeder_combout\ = \sc0|sc23|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc23|qp\(4),
	combout => \sc0|sc24|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N27
\sc0|sc24|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc24|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(4));

-- Location: FF_X77_Y37_N7
\sc0|sc25|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(4));

-- Location: LCCOMB_X77_Y37_N10
\sc0|sc26|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[4]~feeder_combout\ = \sc0|sc25|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(4),
	combout => \sc0|sc26|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N11
\sc0|sc26|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(4));

-- Location: FF_X77_Y37_N5
\sc0|sc27|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(4));

-- Location: FF_X77_Y37_N3
\sc0|sc28|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(4));

-- Location: FF_X77_Y37_N21
\sc0|sc29|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(4));

-- Location: LCCOMB_X77_Y37_N14
\sc0|sc30|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc30|qp[4]~feeder_combout\ = \sc0|sc29|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc29|qp\(4),
	combout => \sc0|sc30|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N15
\sc0|sc30|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc30|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(4));

-- Location: FF_X77_Y37_N1
\sc0|sc31|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(4));

-- Location: FF_X77_Y37_N31
\sc0|sc32|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc31|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(4));

-- Location: FF_X77_Y37_N25
\sc0|sc33|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(4));

-- Location: LCCOMB_X77_Y37_N8
\sc0|sc34|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc34|qp[4]~feeder_combout\ = \sc0|sc33|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc33|qp\(4),
	combout => \sc0|sc34|qp[4]~feeder_combout\);

-- Location: FF_X77_Y37_N9
\sc0|sc34|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc34|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(4));

-- Location: FF_X77_Y37_N19
\sc0|sc35|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(4));

-- Location: FF_X77_Y37_N29
\sc0|sc36|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc35|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(4));

-- Location: LCCOMB_X77_Y39_N0
\sc0|sc37|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[4]~feeder_combout\ = \sc0|sc36|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(4),
	combout => \sc0|sc37|qp[4]~feeder_combout\);

-- Location: FF_X77_Y39_N1
\sc0|sc37|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(4));

-- Location: FF_X77_Y39_N25
\sc0|sc38|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc37|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(4));

-- Location: FF_X76_Y39_N9
\sc0|sc39|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(4));

-- Location: FF_X76_Y39_N25
\sc0|sc40|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(4));

-- Location: LCCOMB_X77_Y39_N2
\sc0|sc41|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc41|qp[4]~feeder_combout\ = \sc0|sc40|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc40|qp\(4),
	combout => \sc0|sc41|qp[4]~feeder_combout\);

-- Location: FF_X77_Y39_N3
\sc0|sc41|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc41|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(4));

-- Location: LCCOMB_X77_Y39_N14
\sc0|sc42|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[4]~feeder_combout\ = \sc0|sc41|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(4),
	combout => \sc0|sc42|qp[4]~feeder_combout\);

-- Location: FF_X77_Y39_N15
\sc0|sc42|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(4));

-- Location: LCCOMB_X77_Y39_N8
\sc0|sc0|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~17_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc41|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc42|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc41|qp\(4),
	datac => \sc0|sc42|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~17_combout\);

-- Location: LCCOMB_X77_Y39_N24
\sc0|sc0|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~17_combout\ & (\sc0|sc37|qp\(4))) # (!\sc0|sc0|Mux5~17_combout\ & ((\sc0|sc38|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc37|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc38|qp\(4),
	datad => \sc0|sc0|Mux5~17_combout\,
	combout => \sc0|sc0|Mux5~18_combout\);

-- Location: FF_X77_Y39_N9
\sc0|sc43|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(4));

-- Location: FF_X77_Y39_N5
\sc0|sc44|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(4));

-- Location: LCCOMB_X77_Y39_N4
\sc0|sc0|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc43|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc44|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc43|qp\(4),
	datac => \sc0|sc44|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~10_combout\);

-- Location: LCCOMB_X76_Y39_N24
\sc0|sc0|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~10_combout\ & (\sc0|sc39|qp\(4))) # (!\sc0|sc0|Mux5~10_combout\ & ((\sc0|sc40|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc39|qp\(4),
	datac => \sc0|sc40|qp\(4),
	datad => \sc0|sc0|Mux5~10_combout\,
	combout => \sc0|sc0|Mux5~11_combout\);

-- Location: FF_X77_Y39_N13
\sc0|sc45|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(4));

-- Location: FF_X77_Y39_N23
\sc0|sc46|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(4));

-- Location: FF_X77_Y39_N17
\sc0|sc47|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(4));

-- Location: FF_X77_Y39_N31
\sc0|sc48|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc47|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(4));

-- Location: FF_X77_Y39_N19
\sc0|sc49|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(4));

-- Location: FF_X77_Y39_N21
\sc0|sc50|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(4));

-- Location: LCCOMB_X77_Y39_N26
\sc0|sc51|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[4]~feeder_combout\ = \sc0|sc50|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(4),
	combout => \sc0|sc51|qp[4]~feeder_combout\);

-- Location: FF_X77_Y39_N27
\sc0|sc51|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(4));

-- Location: FF_X77_Y39_N7
\sc0|sc52|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(4));

-- Location: LCCOMB_X77_Y39_N6
\sc0|sc0|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~14_combout\);

-- Location: LCCOMB_X77_Y39_N18
\sc0|sc0|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~14_combout\ & (\sc0|sc47|qp\(4))) # (!\sc0|sc0|Mux5~14_combout\ & ((\sc0|sc48|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc47|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc48|qp\(4),
	datad => \sc0|sc0|Mux5~14_combout\,
	combout => \sc0|sc0|Mux5~15_combout\);

-- Location: LCCOMB_X77_Y39_N16
\sc0|sc0|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~12_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc46|qp\(4)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc50|qp\(4) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc50|qp\(4),
	datac => \sc0|sc46|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~12_combout\);

-- Location: LCCOMB_X77_Y39_N12
\sc0|sc0|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux5~12_combout\ & ((\sc0|sc45|qp\(4)))) # (!\sc0|sc0|Mux5~12_combout\ & (\sc0|sc49|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc49|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc45|qp\(4),
	datad => \sc0|sc0|Mux5~12_combout\,
	combout => \sc0|sc0|Mux5~13_combout\);

-- Location: LCCOMB_X77_Y39_N28
\sc0|sc0|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~16_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux5~13_combout\))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc0|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc0|Mux5~15_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc0|Mux5~13_combout\,
	combout => \sc0|sc0|Mux5~16_combout\);

-- Location: LCCOMB_X76_Y39_N4
\sc0|sc0|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~19_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux5~16_combout\ & (\sc0|sc0|Mux5~18_combout\)) # (!\sc0|sc0|Mux5~16_combout\ & ((\sc0|sc0|Mux5~11_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc0|Mux5~18_combout\,
	datac => \sc0|sc0|Mux5~11_combout\,
	datad => \sc0|sc0|Mux5~16_combout\,
	combout => \sc0|sc0|Mux5~19_combout\);

-- Location: LCCOMB_X77_Y37_N20
\sc0|sc0|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~7_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc29|qp\(4)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc31|qp\(4) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc31|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc29|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux5~7_combout\);

-- Location: LCCOMB_X77_Y37_N12
\sc0|sc0|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux5~7_combout\ & (\sc0|sc21|qp\(4))) # (!\sc0|sc0|Mux5~7_combout\ & ((\sc0|sc23|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc21|qp\(4),
	datac => \sc0|sc23|qp\(4),
	datad => \sc0|sc0|Mux5~7_combout\,
	combout => \sc0|sc0|Mux5~8_combout\);

-- Location: LCCOMB_X77_Y37_N18
\sc0|sc0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc27|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc35|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc27|qp\(4),
	datac => \sc0|sc35|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y37_N24
\sc0|sc0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux5~0_combout\ & (\sc0|sc25|qp\(4))) # (!\sc0|sc0|Mux5~0_combout\ & ((\sc0|sc33|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc25|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc33|qp\(4),
	datad => \sc0|sc0|Mux5~0_combout\,
	combout => \sc0|sc0|Mux5~1_combout\);

-- Location: LCCOMB_X77_Y37_N0
\sc0|sc0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~2_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc30|qp\(4)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc32|qp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc32|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc30|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux5~2_combout\);

-- Location: LCCOMB_X77_Y37_N6
\sc0|sc0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~3_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux5~2_combout\ & (\sc0|sc22|qp\(4))) # (!\sc0|sc0|Mux5~2_combout\ & ((\sc0|sc24|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc24|qp\(4),
	datad => \sc0|sc0|Mux5~2_combout\,
	combout => \sc0|sc0|Mux5~3_combout\);

-- Location: LCCOMB_X77_Y37_N2
\sc0|sc0|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~4_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc28|qp\(4)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc36|qp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc36|qp\(4),
	datac => \sc0|sc28|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux5~4_combout\);

-- Location: LCCOMB_X77_Y37_N4
\sc0|sc0|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~5_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux5~4_combout\ & ((\sc0|sc26|qp\(4)))) # (!\sc0|sc0|Mux5~4_combout\ & (\sc0|sc34|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc34|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc26|qp\(4),
	datad => \sc0|sc0|Mux5~4_combout\,
	combout => \sc0|sc0|Mux5~5_combout\);

-- Location: LCCOMB_X76_Y39_N6
\sc0|sc0|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux5~3_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux5~3_combout\,
	datad => \sc0|sc0|Mux5~5_combout\,
	combout => \sc0|sc0|Mux5~6_combout\);

-- Location: LCCOMB_X76_Y39_N16
\sc0|sc0|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux5~6_combout\ & (\sc0|sc0|Mux5~8_combout\)) # (!\sc0|sc0|Mux5~6_combout\ & ((\sc0|sc0|Mux5~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux5~8_combout\,
	datac => \sc0|sc0|Mux5~1_combout\,
	datad => \sc0|sc0|Mux5~6_combout\,
	combout => \sc0|sc0|Mux5~9_combout\);

-- Location: LCCOMB_X76_Y39_N26
\sc0|sc0|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux5~9_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux5~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc0|Mux5~19_combout\,
	datad => \sc0|sc0|Mux5~9_combout\,
	combout => \sc0|sc0|Mux5~20_combout\);

-- Location: LCCOMB_X76_Y39_N28
\sc0|sc0|Mux5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~23_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc8|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc12|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc8|qp\(4),
	datac => \sc0|sc12|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux5~23_combout\);

-- Location: LCCOMB_X76_Y39_N0
\sc0|sc0|Mux5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~24_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux5~23_combout\ & ((\sc0|sc7|qp\(4)))) # (!\sc0|sc0|Mux5~23_combout\ & (\sc0|sc11|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc11|qp\(4),
	datac => \sc0|sc7|qp\(4),
	datad => \sc0|sc0|Mux5~23_combout\,
	combout => \sc0|sc0|Mux5~24_combout\);

-- Location: LCCOMB_X76_Y39_N20
\sc0|sc0|Mux5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~25_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc19|qp\(4)) # (\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc20|qp\(4) & ((!\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc20|qp\(4),
	datac => \sc0|sc19|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux5~25_combout\);

-- Location: LCCOMB_X76_Y39_N2
\sc0|sc0|Mux5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~26_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~25_combout\ & (\sc0|sc15|qp\(4))) # (!\sc0|sc0|Mux5~25_combout\ & ((\sc0|sc16|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc15|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc16|qp\(4),
	datad => \sc0|sc0|Mux5~25_combout\,
	combout => \sc0|sc0|Mux5~26_combout\);

-- Location: LCCOMB_X76_Y39_N14
\sc0|sc0|Mux5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~27_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux5~24_combout\)) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux5~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux5~24_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux5~26_combout\,
	combout => \sc0|sc0|Mux5~27_combout\);

-- Location: LCCOMB_X77_Y38_N18
\sc0|sc0|Mux5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~28_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc6|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc10|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc6|qp\(4),
	datab => \sc0|sc10|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux5~28_combout\);

-- Location: LCCOMB_X77_Y38_N26
\sc0|sc0|Mux5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~29_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux5~28_combout\ & ((\sc0|sc5|qp\(4)))) # (!\sc0|sc0|Mux5~28_combout\ & (\sc0|sc9|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux5~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc9|qp\(4),
	datac => \sc0|sc5|qp\(4),
	datad => \sc0|sc0|Mux5~28_combout\,
	combout => \sc0|sc0|Mux5~29_combout\);

-- Location: LCCOMB_X77_Y38_N2
\sc0|sc0|Mux5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~21_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc17|qp\(4)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc18|qp\(4) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc17|qp\(4),
	datab => \sc0|sc18|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux5~21_combout\);

-- Location: LCCOMB_X77_Y38_N14
\sc0|sc0|Mux5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~22_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux5~21_combout\ & (\sc0|sc13|qp\(4))) # (!\sc0|sc0|Mux5~21_combout\ & ((\sc0|sc14|qp\(4)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc13|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc14|qp\(4),
	datad => \sc0|sc0|Mux5~21_combout\,
	combout => \sc0|sc0|Mux5~22_combout\);

-- Location: LCCOMB_X76_Y39_N12
\sc0|sc0|Mux5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~30_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux5~27_combout\ & (\sc0|sc0|Mux5~29_combout\)) # (!\sc0|sc0|Mux5~27_combout\ & ((\sc0|sc0|Mux5~22_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc0|Mux5~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux5~27_combout\,
	datac => \sc0|sc0|Mux5~29_combout\,
	datad => \sc0|sc0|Mux5~22_combout\,
	combout => \sc0|sc0|Mux5~30_combout\);

-- Location: LCCOMB_X76_Y39_N30
\sc0|sc0|Mux5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(4))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux5~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(4),
	datad => \sc0|sc0|Mux5~30_combout\,
	combout => \sc0|sc0|Mux5~31_combout\);

-- Location: LCCOMB_X76_Y39_N10
\sc0|sc0|Mux5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux5~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux5~31_combout\ & (\sc0|sc4|qp\(4))) # (!\sc0|sc0|Mux5~31_combout\ & ((\sc0|sc3|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(4),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(4),
	datad => \sc0|sc0|Mux5~31_combout\,
	combout => \sc0|sc0|Mux5~32_combout\);

-- Location: LCCOMB_X76_Y39_N8
\sc0|sc0|Mux5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~33_combout\ = (\sc0|sc0|Mux5~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux5~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux5~20_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux5~32_combout\,
	combout => \sc0|sc0|Mux5~33_combout\);

-- Location: IOIBUF_X96_Y0_N15
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: FF_X75_Y39_N15
\sc1|c0|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[5]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(5));

-- Location: FF_X75_Y39_N13
\sc0|sc3|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(5));

-- Location: FF_X72_Y39_N21
\sc0|sc4|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(5));

-- Location: FF_X75_Y39_N27
\sc0|sc5|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(5));

-- Location: FF_X75_Y39_N7
\sc0|sc6|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(5));

-- Location: FF_X72_Y39_N29
\sc0|sc7|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(5));

-- Location: FF_X75_Y39_N5
\sc0|sc8|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(5));

-- Location: FF_X75_Y39_N31
\sc0|sc9|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc8|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(5));

-- Location: FF_X75_Y39_N17
\sc0|sc10|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(5));

-- Location: LCCOMB_X76_Y41_N4
\sc0|sc11|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc11|qp[5]~feeder_combout\ = \sc0|sc10|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc10|qp\(5),
	combout => \sc0|sc11|qp[5]~feeder_combout\);

-- Location: FF_X76_Y41_N5
\sc0|sc11|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc11|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(5));

-- Location: FF_X76_Y41_N23
\sc0|sc12|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(5));

-- Location: LCCOMB_X76_Y41_N26
\sc0|sc13|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc13|qp[5]~feeder_combout\ = \sc0|sc12|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc12|qp\(5),
	combout => \sc0|sc13|qp[5]~feeder_combout\);

-- Location: FF_X76_Y41_N27
\sc0|sc13|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc13|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(5));

-- Location: LCCOMB_X76_Y41_N18
\sc0|sc14|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[5]~feeder_combout\ = \sc0|sc13|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(5),
	combout => \sc0|sc14|qp[5]~feeder_combout\);

-- Location: FF_X76_Y41_N19
\sc0|sc14|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(5));

-- Location: FF_X75_Y39_N23
\sc0|sc15|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(5));

-- Location: LCCOMB_X75_Y39_N22
\sc0|sc0|Mux4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~28_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc7|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc15|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc7|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc15|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux4~28_combout\);

-- Location: LCCOMB_X75_Y39_N26
\sc0|sc0|Mux4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~29_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux4~28_combout\ & ((\sc0|sc5|qp\(5)))) # (!\sc0|sc0|Mux4~28_combout\ & (\sc0|sc13|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc13|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc5|qp\(5),
	datad => \sc0|sc0|Mux4~28_combout\,
	combout => \sc0|sc0|Mux4~29_combout\);

-- Location: FF_X75_Y39_N1
\sc0|sc16|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc15|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(5));

-- Location: LCCOMB_X74_Y40_N28
\sc0|sc17|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc17|qp[5]~feeder_combout\ = \sc0|sc16|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc16|qp\(5),
	combout => \sc0|sc17|qp[5]~feeder_combout\);

-- Location: FF_X74_Y40_N29
\sc0|sc17|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc17|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(5));

-- Location: LCCOMB_X74_Y40_N30
\sc0|sc18|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc18|qp[5]~feeder_combout\ = \sc0|sc17|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc17|qp\(5),
	combout => \sc0|sc18|qp[5]~feeder_combout\);

-- Location: FF_X74_Y40_N31
\sc0|sc18|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc18|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(5));

-- Location: FF_X74_Y40_N27
\sc0|sc19|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(5));

-- Location: LCCOMB_X74_Y40_N24
\sc0|sc0|Mux4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~21_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc17|qp\(5)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc19|qp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc19|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc17|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux4~21_combout\);

-- Location: LCCOMB_X75_Y39_N30
\sc0|sc0|Mux4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~22_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux4~21_combout\ & ((\sc0|sc9|qp\(5)))) # (!\sc0|sc0|Mux4~21_combout\ & (\sc0|sc11|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux4~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc11|qp\(5),
	datac => \sc0|sc9|qp\(5),
	datad => \sc0|sc0|Mux4~21_combout\,
	combout => \sc0|sc0|Mux4~22_combout\);

-- Location: FF_X75_Y39_N9
\sc0|sc20|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc19|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(5));

-- Location: LCCOMB_X75_Y39_N8
\sc0|sc0|Mux4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~25_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc18|qp\(5)) # ((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc20|qp\(5) & !\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc18|qp\(5),
	datac => \sc0|sc20|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux4~25_combout\);

-- Location: LCCOMB_X75_Y39_N16
\sc0|sc0|Mux4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~26_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux4~25_combout\ & ((\sc0|sc10|qp\(5)))) # (!\sc0|sc0|Mux4~25_combout\ & (\sc0|sc12|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux4~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc12|qp\(5),
	datac => \sc0|sc10|qp\(5),
	datad => \sc0|sc0|Mux4~25_combout\,
	combout => \sc0|sc0|Mux4~26_combout\);

-- Location: LCCOMB_X75_Y39_N0
\sc0|sc0|Mux4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~23_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc8|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc16|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc8|qp\(5),
	datac => \sc0|sc16|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux4~23_combout\);

-- Location: LCCOMB_X75_Y39_N6
\sc0|sc0|Mux4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~24_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux4~23_combout\ & ((\sc0|sc6|qp\(5)))) # (!\sc0|sc0|Mux4~23_combout\ & (\sc0|sc14|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux4~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc14|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc6|qp\(5),
	datad => \sc0|sc0|Mux4~23_combout\,
	combout => \sc0|sc0|Mux4~24_combout\);

-- Location: LCCOMB_X75_Y39_N18
\sc0|sc0|Mux4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~27_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux4~24_combout\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux4~26_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc0|Mux4~24_combout\,
	combout => \sc0|sc0|Mux4~27_combout\);

-- Location: LCCOMB_X75_Y39_N24
\sc0|sc0|Mux4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~30_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux4~27_combout\ & (\sc0|sc0|Mux4~29_combout\)) # (!\sc0|sc0|Mux4~27_combout\ & ((\sc0|sc0|Mux4~22_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux4~29_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux4~22_combout\,
	datad => \sc0|sc0|Mux4~27_combout\,
	combout => \sc0|sc0|Mux4~30_combout\);

-- Location: LCCOMB_X75_Y39_N14
\sc0|sc0|Mux4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~31_combout\ = (\sc0|sc0|Mux6~3_combout\ & (\sc0|sc0|Mux6~2_combout\ & (\sc1|c0|qp\(5)))) # (!\sc0|sc0|Mux6~3_combout\ & (((\sc0|sc0|Mux4~30_combout\)) # (!\sc0|sc0|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~3_combout\,
	datab => \sc0|sc0|Mux6~2_combout\,
	datac => \sc1|c0|qp\(5),
	datad => \sc0|sc0|Mux4~30_combout\,
	combout => \sc0|sc0|Mux4~31_combout\);

-- Location: LCCOMB_X75_Y39_N12
\sc0|sc0|Mux4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux4~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux4~31_combout\ & (\sc0|sc4|qp\(5))) # (!\sc0|sc0|Mux4~31_combout\ & ((\sc0|sc3|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(5),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(5),
	datad => \sc0|sc0|Mux4~31_combout\,
	combout => \sc0|sc0|Mux4~32_combout\);

-- Location: FF_X75_Y39_N3
\sc0|sc21|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(5));

-- Location: LCCOMB_X76_Y40_N14
\sc0|sc22|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc22|qp[5]~feeder_combout\ = \sc0|sc21|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc21|qp\(5),
	combout => \sc0|sc22|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N15
\sc0|sc22|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc22|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(5));

-- Location: FF_X76_Y40_N19
\sc0|sc23|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(5));

-- Location: FF_X76_Y40_N5
\sc0|sc24|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc23|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(5));

-- Location: FF_X76_Y40_N29
\sc0|sc25|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(5));

-- Location: LCCOMB_X76_Y40_N0
\sc0|sc26|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[5]~feeder_combout\ = \sc0|sc25|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(5),
	combout => \sc0|sc26|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N1
\sc0|sc26|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(5));

-- Location: LCCOMB_X76_Y40_N12
\sc0|sc27|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc27|qp[5]~feeder_combout\ = \sc0|sc26|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc26|qp\(5),
	combout => \sc0|sc27|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N13
\sc0|sc27|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc27|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(5));

-- Location: LCCOMB_X76_Y40_N22
\sc0|sc28|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc28|qp[5]~feeder_combout\ = \sc0|sc27|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc27|qp\(5),
	combout => \sc0|sc28|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N23
\sc0|sc28|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc28|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(5));

-- Location: FF_X76_Y40_N25
\sc0|sc29|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(5));

-- Location: FF_X76_Y40_N7
\sc0|sc30|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc29|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(5));

-- Location: LCCOMB_X76_Y40_N2
\sc0|sc31|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc31|qp[5]~feeder_combout\ = \sc0|sc30|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc30|qp\(5),
	combout => \sc0|sc31|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N3
\sc0|sc31|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc31|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(5));

-- Location: LCCOMB_X76_Y40_N26
\sc0|sc32|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc32|qp[5]~feeder_combout\ = \sc0|sc31|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc31|qp\(5),
	combout => \sc0|sc32|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N27
\sc0|sc32|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc32|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(5));

-- Location: FF_X76_Y40_N9
\sc0|sc33|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(5));

-- Location: FF_X76_Y40_N31
\sc0|sc34|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc33|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(5));

-- Location: FF_X76_Y40_N21
\sc0|sc35|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(5));

-- Location: LCCOMB_X76_Y40_N16
\sc0|sc36|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc36|qp[5]~feeder_combout\ = \sc0|sc35|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc35|qp\(5),
	combout => \sc0|sc36|qp[5]~feeder_combout\);

-- Location: FF_X76_Y40_N17
\sc0|sc36|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc36|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(5));

-- Location: FF_X76_Y38_N13
\sc0|sc37|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc36|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(5));

-- Location: LCCOMB_X76_Y38_N8
\sc0|sc38|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[5]~feeder_combout\ = \sc0|sc37|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(5),
	combout => \sc0|sc38|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N9
\sc0|sc38|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(5));

-- Location: FF_X76_Y38_N23
\sc0|sc39|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(5));

-- Location: FF_X76_Y38_N5
\sc0|sc40|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(5));

-- Location: FF_X76_Y38_N1
\sc0|sc41|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(5));

-- Location: LCCOMB_X76_Y38_N28
\sc0|sc42|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[5]~feeder_combout\ = \sc0|sc41|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(5),
	combout => \sc0|sc42|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N29
\sc0|sc42|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(5));

-- Location: LCCOMB_X76_Y38_N20
\sc0|sc0|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~17_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc38|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc42|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc38|qp\(5),
	datac => \sc0|sc42|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux4~17_combout\);

-- Location: LCCOMB_X76_Y38_N0
\sc0|sc0|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~18_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux4~17_combout\ & (\sc0|sc37|qp\(5))) # (!\sc0|sc0|Mux4~17_combout\ & ((\sc0|sc41|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc37|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc41|qp\(5),
	datad => \sc0|sc0|Mux4~17_combout\,
	combout => \sc0|sc0|Mux4~18_combout\);

-- Location: FF_X76_Y38_N21
\sc0|sc43|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(5));

-- Location: LCCOMB_X76_Y38_N18
\sc0|sc44|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc44|qp[5]~feeder_combout\ = \sc0|sc43|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc43|qp\(5),
	combout => \sc0|sc44|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N19
\sc0|sc44|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc44|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(5));

-- Location: LCCOMB_X77_Y38_N20
\sc0|sc45|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc45|qp[5]~feeder_combout\ = \sc0|sc44|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc44|qp\(5),
	combout => \sc0|sc45|qp[5]~feeder_combout\);

-- Location: FF_X77_Y38_N21
\sc0|sc45|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc45|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(5));

-- Location: FF_X76_Y38_N17
\sc0|sc46|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(5));

-- Location: LCCOMB_X76_Y38_N6
\sc0|sc47|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc47|qp[5]~feeder_combout\ = \sc0|sc46|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc46|qp\(5),
	combout => \sc0|sc47|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N7
\sc0|sc47|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc47|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(5));

-- Location: LCCOMB_X76_Y38_N14
\sc0|sc48|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[5]~feeder_combout\ = \sc0|sc47|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(5),
	combout => \sc0|sc48|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N15
\sc0|sc48|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(5));

-- Location: FF_X76_Y38_N31
\sc0|sc49|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(5));

-- Location: FF_X76_Y38_N25
\sc0|sc50|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(5));

-- Location: LCCOMB_X76_Y38_N24
\sc0|sc0|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc49|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc50|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc49|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc50|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux4~10_combout\);

-- Location: LCCOMB_X76_Y38_N16
\sc0|sc0|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux4~10_combout\ & (\sc0|sc45|qp\(5))) # (!\sc0|sc0|Mux4~10_combout\ & ((\sc0|sc46|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc45|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc46|qp\(5),
	datad => \sc0|sc0|Mux4~10_combout\,
	combout => \sc0|sc0|Mux4~11_combout\);

-- Location: LCCOMB_X76_Y38_N4
\sc0|sc0|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~12_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc40|qp\(5)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc44|qp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc44|qp\(5),
	datac => \sc0|sc40|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux4~12_combout\);

-- Location: LCCOMB_X76_Y38_N22
\sc0|sc0|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux4~12_combout\ & ((\sc0|sc39|qp\(5)))) # (!\sc0|sc0|Mux4~12_combout\ & (\sc0|sc43|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc39|qp\(5),
	datad => \sc0|sc0|Mux4~12_combout\,
	combout => \sc0|sc0|Mux4~13_combout\);

-- Location: LCCOMB_X76_Y38_N26
\sc0|sc51|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[5]~feeder_combout\ = \sc0|sc50|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(5),
	combout => \sc0|sc51|qp[5]~feeder_combout\);

-- Location: FF_X76_Y38_N27
\sc0|sc51|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(5));

-- Location: FF_X76_Y38_N3
\sc0|sc52|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(5));

-- Location: LCCOMB_X76_Y38_N2
\sc0|sc0|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux4~14_combout\);

-- Location: LCCOMB_X76_Y38_N30
\sc0|sc0|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux4~14_combout\ & (\sc0|sc47|qp\(5))) # (!\sc0|sc0|Mux4~14_combout\ & ((\sc0|sc48|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(5),
	datac => \sc0|sc48|qp\(5),
	datad => \sc0|sc0|Mux4~14_combout\,
	combout => \sc0|sc0|Mux4~15_combout\);

-- Location: LCCOMB_X76_Y38_N10
\sc0|sc0|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~16_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux4~13_combout\)) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux4~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux4~13_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux4~15_combout\,
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux4~16_combout\);

-- Location: LCCOMB_X75_Y39_N20
\sc0|sc0|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~19_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux4~16_combout\ & (\sc0|sc0|Mux4~18_combout\)) # (!\sc0|sc0|Mux4~16_combout\ & ((\sc0|sc0|Mux4~11_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux4~18_combout\,
	datac => \sc0|sc0|Mux4~11_combout\,
	datad => \sc0|sc0|Mux4~16_combout\,
	combout => \sc0|sc0|Mux4~19_combout\);

-- Location: LCCOMB_X76_Y40_N20
\sc0|sc0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc33|qp\(5)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc35|qp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc35|qp\(5),
	datad => \sc0|sc33|qp\(5),
	combout => \sc0|sc0|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y40_N28
\sc0|sc0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux4~0_combout\ & ((\sc0|sc25|qp\(5)))) # (!\sc0|sc0|Mux4~0_combout\ & (\sc0|sc27|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc27|qp\(5),
	datac => \sc0|sc25|qp\(5),
	datad => \sc0|sc0|Mux4~0_combout\,
	combout => \sc0|sc0|Mux4~1_combout\);

-- Location: LCCOMB_X76_Y40_N8
\sc0|sc0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~2_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1)) # ((\sc0|sc24|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc32|qp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc32|qp\(5),
	datad => \sc0|sc24|qp\(5),
	combout => \sc0|sc0|Mux4~2_combout\);

-- Location: LCCOMB_X76_Y40_N6
\sc0|sc0|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~3_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux4~2_combout\ & (\sc0|sc22|qp\(5))) # (!\sc0|sc0|Mux4~2_combout\ & ((\sc0|sc30|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(5),
	datad => \sc0|sc0|Mux4~2_combout\,
	combout => \sc0|sc0|Mux4~3_combout\);

-- Location: LCCOMB_X76_Y40_N30
\sc0|sc0|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc34|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc36|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc34|qp\(5),
	datad => \sc0|sc36|qp\(5),
	combout => \sc0|sc0|Mux4~4_combout\);

-- Location: LCCOMB_X76_Y40_N24
\sc0|sc0|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~5_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux4~4_combout\ & (\sc0|sc26|qp\(5))) # (!\sc0|sc0|Mux4~4_combout\ & ((\sc0|sc28|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc26|qp\(5),
	datac => \sc0|sc28|qp\(5),
	datad => \sc0|sc0|Mux4~4_combout\,
	combout => \sc0|sc0|Mux4~5_combout\);

-- Location: LCCOMB_X76_Y40_N10
\sc0|sc0|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~6_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux4~3_combout\) # ((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((!\sc0|sc2|Bloque_5|qp\(0) & \sc0|sc0|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux4~3_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc0|Mux4~5_combout\,
	combout => \sc0|sc0|Mux4~6_combout\);

-- Location: LCCOMB_X76_Y40_N18
\sc0|sc0|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1)) # ((\sc0|sc23|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc31|qp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc23|qp\(5),
	datad => \sc0|sc31|qp\(5),
	combout => \sc0|sc0|Mux4~7_combout\);

-- Location: LCCOMB_X75_Y39_N2
\sc0|sc0|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~8_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux4~7_combout\ & ((\sc0|sc21|qp\(5)))) # (!\sc0|sc0|Mux4~7_combout\ & (\sc0|sc29|qp\(5))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc29|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc21|qp\(5),
	datad => \sc0|sc0|Mux4~7_combout\,
	combout => \sc0|sc0|Mux4~8_combout\);

-- Location: LCCOMB_X75_Y39_N10
\sc0|sc0|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux4~6_combout\ & ((\sc0|sc0|Mux4~8_combout\))) # (!\sc0|sc0|Mux4~6_combout\ & (\sc0|sc0|Mux4~1_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux4~1_combout\,
	datac => \sc0|sc0|Mux4~6_combout\,
	datad => \sc0|sc0|Mux4~8_combout\,
	combout => \sc0|sc0|Mux4~9_combout\);

-- Location: LCCOMB_X75_Y39_N28
\sc0|sc0|Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux4~9_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc0|Mux4~19_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux4~9_combout\,
	combout => \sc0|sc0|Mux4~20_combout\);

-- Location: LCCOMB_X75_Y39_N4
\sc0|sc0|Mux4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~33_combout\ = (\sc0|sc0|Mux4~20_combout\) # ((\sc0|sc0|Mux4~32_combout\ & \sc0|sc2|Bloque_5|qp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux4~32_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux4~20_combout\,
	combout => \sc0|sc0|Mux4~33_combout\);

-- Location: IOIBUF_X102_Y0_N15
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: FF_X72_Y37_N27
\sc1|c0|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[6]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(6));

-- Location: FF_X72_Y37_N5
\sc0|sc3|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(6));

-- Location: LCCOMB_X69_Y37_N16
\sc0|sc4|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[6]~feeder_combout\ = \sc0|sc3|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(6),
	combout => \sc0|sc4|qp[6]~feeder_combout\);

-- Location: FF_X69_Y37_N17
\sc0|sc4|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(6));

-- Location: FF_X72_Y37_N23
\sc0|sc5|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(6));

-- Location: FF_X72_Y37_N11
\sc0|sc6|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(6));

-- Location: LCCOMB_X73_Y37_N22
\sc0|sc7|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc7|qp[6]~feeder_combout\ = \sc0|sc6|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc6|qp\(6),
	combout => \sc0|sc7|qp[6]~feeder_combout\);

-- Location: FF_X73_Y37_N23
\sc0|sc7|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc7|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(6));

-- Location: FF_X73_Y37_N13
\sc0|sc8|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(6));

-- Location: LCCOMB_X73_Y37_N8
\sc0|sc9|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc9|qp[6]~feeder_combout\ = \sc0|sc8|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc8|qp\(6),
	combout => \sc0|sc9|qp[6]~feeder_combout\);

-- Location: FF_X73_Y37_N9
\sc0|sc9|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc9|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(6));

-- Location: FF_X72_Y37_N7
\sc0|sc10|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(6));

-- Location: LCCOMB_X72_Y37_N6
\sc0|sc0|Mux3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~28_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc9|qp\(6)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc10|qp\(6) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc9|qp\(6),
	datac => \sc0|sc10|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux3~28_combout\);

-- Location: LCCOMB_X72_Y37_N22
\sc0|sc0|Mux3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~29_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~28_combout\ & ((\sc0|sc5|qp\(6)))) # (!\sc0|sc0|Mux3~28_combout\ & (\sc0|sc6|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc6|qp\(6),
	datac => \sc0|sc5|qp\(6),
	datad => \sc0|sc0|Mux3~28_combout\,
	combout => \sc0|sc0|Mux3~29_combout\);

-- Location: FF_X73_Y37_N29
\sc0|sc11|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc10|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(6));

-- Location: LCCOMB_X73_Y37_N10
\sc0|sc12|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc12|qp[6]~feeder_combout\ = \sc0|sc11|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc11|qp\(6),
	combout => \sc0|sc12|qp[6]~feeder_combout\);

-- Location: FF_X73_Y37_N11
\sc0|sc12|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc12|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(6));

-- Location: LCCOMB_X73_Y37_N28
\sc0|sc0|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~21_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc11|qp\(6)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc12|qp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc12|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc11|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~21_combout\);

-- Location: LCCOMB_X73_Y37_N12
\sc0|sc0|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~22_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~21_combout\ & (\sc0|sc7|qp\(6))) # (!\sc0|sc0|Mux3~21_combout\ & ((\sc0|sc8|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc7|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc8|qp\(6),
	datad => \sc0|sc0|Mux3~21_combout\,
	combout => \sc0|sc0|Mux3~22_combout\);

-- Location: FF_X72_Y37_N29
\sc0|sc13|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc12|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(6));

-- Location: LCCOMB_X70_Y37_N6
\sc0|sc14|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc14|qp[6]~feeder_combout\ = \sc0|sc13|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc13|qp\(6),
	combout => \sc0|sc14|qp[6]~feeder_combout\);

-- Location: FF_X70_Y37_N7
\sc0|sc14|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc14|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(6));

-- Location: FF_X72_Y37_N9
\sc0|sc15|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(6));

-- Location: LCCOMB_X73_Y37_N18
\sc0|sc16|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc16|qp[6]~feeder_combout\ = \sc0|sc15|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc15|qp\(6),
	combout => \sc0|sc16|qp[6]~feeder_combout\);

-- Location: FF_X73_Y37_N19
\sc0|sc16|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc16|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(6));

-- Location: FF_X73_Y37_N17
\sc0|sc17|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc16|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(6));

-- Location: FF_X72_Y37_N13
\sc0|sc18|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(6));

-- Location: LCCOMB_X73_Y37_N14
\sc0|sc19|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc19|qp[6]~feeder_combout\ = \sc0|sc18|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc18|qp\(6),
	combout => \sc0|sc19|qp[6]~feeder_combout\);

-- Location: FF_X73_Y37_N15
\sc0|sc19|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc19|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(6));

-- Location: FF_X72_Y37_N31
\sc0|sc20|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc19|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(6));

-- Location: LCCOMB_X72_Y37_N30
\sc0|sc0|Mux3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~25_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc19|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc20|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc19|qp\(6),
	datac => \sc0|sc20|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~25_combout\);

-- Location: LCCOMB_X72_Y37_N8
\sc0|sc0|Mux3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~26_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~25_combout\ & ((\sc0|sc15|qp\(6)))) # (!\sc0|sc0|Mux3~25_combout\ & (\sc0|sc16|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc16|qp\(6),
	datac => \sc0|sc15|qp\(6),
	datad => \sc0|sc0|Mux3~25_combout\,
	combout => \sc0|sc0|Mux3~26_combout\);

-- Location: LCCOMB_X72_Y37_N12
\sc0|sc0|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~23_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc14|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc18|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc14|qp\(6),
	datac => \sc0|sc18|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux3~23_combout\);

-- Location: LCCOMB_X72_Y37_N28
\sc0|sc0|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~24_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux3~23_combout\ & ((\sc0|sc13|qp\(6)))) # (!\sc0|sc0|Mux3~23_combout\ & (\sc0|sc17|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc17|qp\(6),
	datac => \sc0|sc13|qp\(6),
	datad => \sc0|sc0|Mux3~23_combout\,
	combout => \sc0|sc0|Mux3~24_combout\);

-- Location: LCCOMB_X72_Y37_N24
\sc0|sc0|Mux3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~27_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc0|Mux3~24_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux3~26_combout\,
	datad => \sc0|sc0|Mux3~24_combout\,
	combout => \sc0|sc0|Mux3~27_combout\);

-- Location: LCCOMB_X72_Y37_N0
\sc0|sc0|Mux3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~30_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux3~27_combout\ & (\sc0|sc0|Mux3~29_combout\)) # (!\sc0|sc0|Mux3~27_combout\ & ((\sc0|sc0|Mux3~22_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux3~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux3~29_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux3~22_combout\,
	datad => \sc0|sc0|Mux3~27_combout\,
	combout => \sc0|sc0|Mux3~30_combout\);

-- Location: LCCOMB_X72_Y37_N26
\sc0|sc0|Mux3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(6))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux3~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(6),
	datad => \sc0|sc0|Mux3~30_combout\,
	combout => \sc0|sc0|Mux3~31_combout\);

-- Location: LCCOMB_X72_Y37_N4
\sc0|sc0|Mux3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux3~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux3~31_combout\ & (\sc0|sc4|qp\(6))) # (!\sc0|sc0|Mux3~31_combout\ & ((\sc0|sc3|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~0_combout\,
	datab => \sc0|sc4|qp\(6),
	datac => \sc0|sc3|qp\(6),
	datad => \sc0|sc0|Mux3~31_combout\,
	combout => \sc0|sc0|Mux3~32_combout\);

-- Location: FF_X72_Y37_N3
\sc0|sc21|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(6));

-- Location: FF_X76_Y37_N25
\sc0|sc22|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc21|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(6));

-- Location: FF_X76_Y37_N7
\sc0|sc23|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(6));

-- Location: LCCOMB_X76_Y37_N8
\sc0|sc24|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc24|qp[6]~feeder_combout\ = \sc0|sc23|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc23|qp\(6),
	combout => \sc0|sc24|qp[6]~feeder_combout\);

-- Location: FF_X76_Y37_N9
\sc0|sc24|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc24|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(6));

-- Location: FF_X76_Y37_N1
\sc0|sc25|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(6));

-- Location: FF_X76_Y37_N19
\sc0|sc26|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc25|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(6));

-- Location: FF_X76_Y37_N27
\sc0|sc27|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(6));

-- Location: FF_X76_Y37_N23
\sc0|sc28|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(6));

-- Location: FF_X76_Y37_N11
\sc0|sc29|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(6));

-- Location: LCCOMB_X76_Y37_N4
\sc0|sc30|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc30|qp[6]~feeder_combout\ = \sc0|sc29|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc29|qp\(6),
	combout => \sc0|sc30|qp[6]~feeder_combout\);

-- Location: FF_X76_Y37_N5
\sc0|sc30|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc30|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(6));

-- Location: FF_X76_Y37_N29
\sc0|sc31|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(6));

-- Location: LCCOMB_X76_Y37_N10
\sc0|sc0|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc29|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc31|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc29|qp\(6),
	datad => \sc0|sc31|qp\(6),
	combout => \sc0|sc0|Mux3~7_combout\);

-- Location: LCCOMB_X72_Y37_N2
\sc0|sc0|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux3~7_combout\ & ((\sc0|sc21|qp\(6)))) # (!\sc0|sc0|Mux3~7_combout\ & (\sc0|sc23|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc23|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc21|qp\(6),
	datad => \sc0|sc0|Mux3~7_combout\,
	combout => \sc0|sc0|Mux3~8_combout\);

-- Location: LCCOMB_X76_Y37_N30
\sc0|sc32|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc32|qp[6]~feeder_combout\ = \sc0|sc31|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc31|qp\(6),
	combout => \sc0|sc32|qp[6]~feeder_combout\);

-- Location: FF_X76_Y37_N31
\sc0|sc32|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc32|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(6));

-- Location: FF_X76_Y37_N21
\sc0|sc33|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(6));

-- Location: LCCOMB_X76_Y37_N14
\sc0|sc34|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc34|qp[6]~feeder_combout\ = \sc0|sc33|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc33|qp\(6),
	combout => \sc0|sc34|qp[6]~feeder_combout\);

-- Location: FF_X76_Y37_N15
\sc0|sc34|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc34|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(6));

-- Location: FF_X76_Y37_N3
\sc0|sc35|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(6));

-- Location: LCCOMB_X76_Y37_N2
\sc0|sc0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc27|qp\(6)) # ((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc35|qp\(6) & !\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc27|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc35|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y37_N20
\sc0|sc0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux3~0_combout\ & (\sc0|sc25|qp\(6))) # (!\sc0|sc0|Mux3~0_combout\ & ((\sc0|sc33|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc25|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc33|qp\(6),
	datad => \sc0|sc0|Mux3~0_combout\,
	combout => \sc0|sc0|Mux3~1_combout\);

-- Location: LCCOMB_X76_Y37_N12
\sc0|sc36|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc36|qp[6]~feeder_combout\ = \sc0|sc35|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc35|qp\(6),
	combout => \sc0|sc36|qp[6]~feeder_combout\);

-- Location: FF_X76_Y37_N13
\sc0|sc36|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc36|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(6));

-- Location: LCCOMB_X76_Y37_N22
\sc0|sc0|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~4_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc28|qp\(6)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc36|qp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc36|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc28|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux3~4_combout\);

-- Location: LCCOMB_X76_Y37_N26
\sc0|sc0|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~5_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux3~4_combout\ & ((\sc0|sc26|qp\(6)))) # (!\sc0|sc0|Mux3~4_combout\ & (\sc0|sc34|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc34|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc26|qp\(6),
	datad => \sc0|sc0|Mux3~4_combout\,
	combout => \sc0|sc0|Mux3~5_combout\);

-- Location: LCCOMB_X76_Y37_N28
\sc0|sc0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc30|qp\(6)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc32|qp\(6) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc32|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux3~2_combout\);

-- Location: LCCOMB_X76_Y37_N0
\sc0|sc0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~3_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux3~2_combout\ & (\sc0|sc22|qp\(6))) # (!\sc0|sc0|Mux3~2_combout\ & ((\sc0|sc24|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc24|qp\(6),
	datad => \sc0|sc0|Mux3~2_combout\,
	combout => \sc0|sc0|Mux3~3_combout\);

-- Location: LCCOMB_X76_Y37_N16
\sc0|sc0|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~6_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc0|Mux3~3_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc0|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux3~5_combout\,
	datad => \sc0|sc0|Mux3~3_combout\,
	combout => \sc0|sc0|Mux3~6_combout\);

-- Location: LCCOMB_X72_Y37_N14
\sc0|sc0|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux3~6_combout\ & (\sc0|sc0|Mux3~8_combout\)) # (!\sc0|sc0|Mux3~6_combout\ & ((\sc0|sc0|Mux3~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux3~8_combout\,
	datac => \sc0|sc0|Mux3~1_combout\,
	datad => \sc0|sc0|Mux3~6_combout\,
	combout => \sc0|sc0|Mux3~9_combout\);

-- Location: LCCOMB_X73_Y35_N18
\sc0|sc37|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[6]~feeder_combout\ = \sc0|sc36|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(6),
	combout => \sc0|sc37|qp[6]~feeder_combout\);

-- Location: FF_X73_Y35_N19
\sc0|sc37|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(6));

-- Location: LCCOMB_X73_Y35_N26
\sc0|sc38|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[6]~feeder_combout\ = \sc0|sc37|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(6),
	combout => \sc0|sc38|qp[6]~feeder_combout\);

-- Location: FF_X73_Y35_N27
\sc0|sc38|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(6));

-- Location: FF_X73_Y35_N7
\sc0|sc39|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(6));

-- Location: FF_X72_Y37_N19
\sc0|sc40|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(6));

-- Location: FF_X73_Y35_N21
\sc0|sc41|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(6));

-- Location: LCCOMB_X73_Y35_N2
\sc0|sc42|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[6]~feeder_combout\ = \sc0|sc41|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(6),
	combout => \sc0|sc42|qp[6]~feeder_combout\);

-- Location: FF_X73_Y35_N3
\sc0|sc42|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(6));

-- Location: FF_X73_Y35_N31
\sc0|sc43|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(6));

-- Location: FF_X73_Y35_N15
\sc0|sc44|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(6));

-- Location: LCCOMB_X73_Y35_N14
\sc0|sc0|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc43|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc44|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc44|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~10_combout\);

-- Location: LCCOMB_X72_Y37_N18
\sc0|sc0|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~10_combout\ & (\sc0|sc39|qp\(6))) # (!\sc0|sc0|Mux3~10_combout\ & ((\sc0|sc40|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc39|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc40|qp\(6),
	datad => \sc0|sc0|Mux3~10_combout\,
	combout => \sc0|sc0|Mux3~11_combout\);

-- Location: LCCOMB_X73_Y35_N30
\sc0|sc0|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~17_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc41|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc42|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc41|qp\(6),
	datac => \sc0|sc42|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~17_combout\);

-- Location: LCCOMB_X73_Y35_N6
\sc0|sc0|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~17_combout\ & (\sc0|sc37|qp\(6))) # (!\sc0|sc0|Mux3~17_combout\ & ((\sc0|sc38|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc37|qp\(6),
	datac => \sc0|sc38|qp\(6),
	datad => \sc0|sc0|Mux3~17_combout\,
	combout => \sc0|sc0|Mux3~18_combout\);

-- Location: FF_X73_Y35_N1
\sc0|sc45|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(6));

-- Location: FF_X73_Y35_N9
\sc0|sc46|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(6));

-- Location: FF_X73_Y35_N11
\sc0|sc47|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(6));

-- Location: LCCOMB_X73_Y35_N4
\sc0|sc48|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[6]~feeder_combout\ = \sc0|sc47|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(6),
	combout => \sc0|sc48|qp[6]~feeder_combout\);

-- Location: FF_X73_Y35_N5
\sc0|sc48|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(6));

-- Location: FF_X73_Y35_N29
\sc0|sc49|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(6));

-- Location: FF_X73_Y35_N13
\sc0|sc50|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(6));

-- Location: LCCOMB_X73_Y35_N10
\sc0|sc0|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~12_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc46|qp\(6)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc50|qp\(6) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc50|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc46|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~12_combout\);

-- Location: LCCOMB_X73_Y35_N0
\sc0|sc0|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux3~12_combout\ & ((\sc0|sc45|qp\(6)))) # (!\sc0|sc0|Mux3~12_combout\ & (\sc0|sc49|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc49|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc45|qp\(6),
	datad => \sc0|sc0|Mux3~12_combout\,
	combout => \sc0|sc0|Mux3~13_combout\);

-- Location: LCCOMB_X73_Y35_N22
\sc0|sc51|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[6]~feeder_combout\ = \sc0|sc50|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(6),
	combout => \sc0|sc51|qp[6]~feeder_combout\);

-- Location: FF_X73_Y35_N23
\sc0|sc51|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(6));

-- Location: FF_X73_Y35_N17
\sc0|sc52|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(6));

-- Location: LCCOMB_X73_Y35_N16
\sc0|sc0|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(6),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc52|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~14_combout\);

-- Location: LCCOMB_X73_Y35_N28
\sc0|sc0|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux3~14_combout\ & (\sc0|sc47|qp\(6))) # (!\sc0|sc0|Mux3~14_combout\ & ((\sc0|sc48|qp\(6)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(6),
	datac => \sc0|sc48|qp\(6),
	datad => \sc0|sc0|Mux3~14_combout\,
	combout => \sc0|sc0|Mux3~15_combout\);

-- Location: LCCOMB_X73_Y35_N24
\sc0|sc0|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~16_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux3~13_combout\) # ((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((!\sc0|sc2|Bloque_5|qp\(3) & \sc0|sc0|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux3~13_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux3~15_combout\,
	combout => \sc0|sc0|Mux3~16_combout\);

-- Location: LCCOMB_X72_Y37_N16
\sc0|sc0|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~19_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux3~16_combout\ & ((\sc0|sc0|Mux3~18_combout\))) # (!\sc0|sc0|Mux3~16_combout\ & (\sc0|sc0|Mux3~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc0|Mux3~11_combout\,
	datac => \sc0|sc0|Mux3~18_combout\,
	datad => \sc0|sc0|Mux3~16_combout\,
	combout => \sc0|sc0|Mux3~19_combout\);

-- Location: LCCOMB_X72_Y37_N20
\sc0|sc0|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux3~9_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux3~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc0|Mux3~9_combout\,
	datad => \sc0|sc0|Mux3~19_combout\,
	combout => \sc0|sc0|Mux3~20_combout\);

-- Location: LCCOMB_X72_Y37_N10
\sc0|sc0|Mux3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~33_combout\ = (\sc0|sc0|Mux3~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc0|Mux3~32_combout\,
	datad => \sc0|sc0|Mux3~20_combout\,
	combout => \sc0|sc0|Mux3~33_combout\);

-- Location: IOIBUF_X65_Y0_N22
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: FF_X72_Y41_N23
\sc1|c0|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[7]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(7));

-- Location: FF_X72_Y41_N29
\sc0|sc3|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(7));

-- Location: FF_X76_Y41_N7
\sc0|sc4|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(7));

-- Location: FF_X76_Y41_N1
\sc0|sc5|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(7));

-- Location: FF_X72_Y41_N9
\sc0|sc6|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(7));

-- Location: FF_X76_Y41_N15
\sc0|sc7|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(7));

-- Location: FF_X76_Y41_N31
\sc0|sc8|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(7));

-- Location: FF_X76_Y41_N3
\sc0|sc9|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc8|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(7));

-- Location: FF_X72_Y41_N21
\sc0|sc10|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(7));

-- Location: FF_X76_Y41_N25
\sc0|sc11|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc10|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(7));

-- Location: FF_X76_Y41_N29
\sc0|sc12|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(7));

-- Location: FF_X76_Y41_N17
\sc0|sc13|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc12|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(7));

-- Location: FF_X72_Y41_N7
\sc0|sc14|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc13|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(7));

-- Location: LCCOMB_X76_Y41_N12
\sc0|sc15|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc15|qp[7]~feeder_combout\ = \sc0|sc14|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc14|qp\(7),
	combout => \sc0|sc15|qp[7]~feeder_combout\);

-- Location: FF_X76_Y41_N13
\sc0|sc15|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc15|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(7));

-- Location: LCCOMB_X72_Y41_N10
\sc0|sc16|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc16|qp[7]~feeder_combout\ = \sc0|sc15|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc15|qp\(7),
	combout => \sc0|sc16|qp[7]~feeder_combout\);

-- Location: FF_X72_Y41_N11
\sc0|sc16|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc16|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(7));

-- Location: FF_X76_Y41_N21
\sc0|sc17|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc16|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(7));

-- Location: LCCOMB_X76_Y41_N8
\sc0|sc18|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc18|qp[7]~feeder_combout\ = \sc0|sc17|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc17|qp\(7),
	combout => \sc0|sc18|qp[7]~feeder_combout\);

-- Location: FF_X76_Y41_N9
\sc0|sc18|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc18|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(7));

-- Location: FF_X76_Y41_N11
\sc0|sc19|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(7));

-- Location: FF_X72_Y41_N5
\sc0|sc20|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc19|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(7));

-- Location: FF_X72_Y41_N27
\sc0|sc21|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(7));

-- Location: FF_X73_Y41_N31
\sc0|sc22|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc21|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(7));

-- Location: FF_X73_Y41_N7
\sc0|sc23|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(7));

-- Location: LCCOMB_X73_Y41_N14
\sc0|sc24|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc24|qp[7]~feeder_combout\ = \sc0|sc23|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc23|qp\(7),
	combout => \sc0|sc24|qp[7]~feeder_combout\);

-- Location: FF_X73_Y41_N15
\sc0|sc24|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc24|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(7));

-- Location: FF_X73_Y41_N21
\sc0|sc25|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(7));

-- Location: LCCOMB_X73_Y41_N24
\sc0|sc26|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[7]~feeder_combout\ = \sc0|sc25|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(7),
	combout => \sc0|sc26|qp[7]~feeder_combout\);

-- Location: FF_X73_Y41_N25
\sc0|sc26|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(7));

-- Location: LCCOMB_X73_Y41_N28
\sc0|sc27|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc27|qp[7]~feeder_combout\ = \sc0|sc26|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc26|qp\(7),
	combout => \sc0|sc27|qp[7]~feeder_combout\);

-- Location: FF_X73_Y41_N29
\sc0|sc27|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc27|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(7));

-- Location: LCCOMB_X73_Y41_N22
\sc0|sc28|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc28|qp[7]~feeder_combout\ = \sc0|sc27|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc27|qp\(7),
	combout => \sc0|sc28|qp[7]~feeder_combout\);

-- Location: FF_X73_Y41_N23
\sc0|sc28|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc28|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(7));

-- Location: FF_X73_Y41_N13
\sc0|sc29|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(7));

-- Location: FF_X73_Y41_N3
\sc0|sc30|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc29|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(7));

-- Location: FF_X73_Y41_N11
\sc0|sc31|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(7));

-- Location: LCCOMB_X73_Y41_N8
\sc0|sc32|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc32|qp[7]~feeder_combout\ = \sc0|sc31|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc31|qp\(7),
	combout => \sc0|sc32|qp[7]~feeder_combout\);

-- Location: FF_X73_Y41_N9
\sc0|sc32|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc32|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(7));

-- Location: FF_X73_Y41_N27
\sc0|sc33|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(7));

-- Location: FF_X73_Y41_N5
\sc0|sc34|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc33|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(7));

-- Location: FF_X73_Y41_N1
\sc0|sc35|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(7));

-- Location: FF_X73_Y41_N19
\sc0|sc36|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc35|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(7));

-- Location: LCCOMB_X75_Y41_N0
\sc0|sc37|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[7]~feeder_combout\ = \sc0|sc36|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(7),
	combout => \sc0|sc37|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N1
\sc0|sc37|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(7));

-- Location: LCCOMB_X75_Y41_N28
\sc0|sc38|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[7]~feeder_combout\ = \sc0|sc37|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(7),
	combout => \sc0|sc38|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N29
\sc0|sc38|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(7));

-- Location: LCCOMB_X75_Y41_N12
\sc0|sc39|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc39|qp[7]~feeder_combout\ = \sc0|sc38|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc38|qp\(7),
	combout => \sc0|sc39|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N13
\sc0|sc39|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc39|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(7));

-- Location: LCCOMB_X75_Y41_N14
\sc0|sc40|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc40|qp[7]~feeder_combout\ = \sc0|sc39|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc39|qp\(7),
	combout => \sc0|sc40|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N15
\sc0|sc40|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc40|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(7));

-- Location: FF_X75_Y41_N9
\sc0|sc41|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(7));

-- Location: FF_X75_Y41_N31
\sc0|sc42|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc41|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(7));

-- Location: FF_X75_Y41_N23
\sc0|sc43|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(7));

-- Location: LCCOMB_X75_Y41_N20
\sc0|sc44|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc44|qp[7]~feeder_combout\ = \sc0|sc43|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc43|qp\(7),
	combout => \sc0|sc44|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N21
\sc0|sc44|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc44|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(7));

-- Location: FF_X72_Y41_N31
\sc0|sc45|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(7));

-- Location: FF_X72_Y41_N3
\sc0|sc46|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(7));

-- Location: LCCOMB_X75_Y41_N24
\sc0|sc47|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc47|qp[7]~feeder_combout\ = \sc0|sc46|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc46|qp\(7),
	combout => \sc0|sc47|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N25
\sc0|sc47|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc47|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(7));

-- Location: LCCOMB_X75_Y41_N26
\sc0|sc48|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[7]~feeder_combout\ = \sc0|sc47|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(7),
	combout => \sc0|sc48|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N27
\sc0|sc48|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(7));

-- Location: FF_X75_Y41_N7
\sc0|sc49|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(7));

-- Location: FF_X72_Y41_N19
\sc0|sc50|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(7));

-- Location: LCCOMB_X72_Y41_N18
\sc0|sc0|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~10_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc49|qp\(7)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc50|qp\(7) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc49|qp\(7),
	datac => \sc0|sc50|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux2~10_combout\);

-- Location: LCCOMB_X72_Y41_N2
\sc0|sc0|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux2~10_combout\ & (\sc0|sc45|qp\(7))) # (!\sc0|sc0|Mux2~10_combout\ & ((\sc0|sc46|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc45|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc46|qp\(7),
	datad => \sc0|sc0|Mux2~10_combout\,
	combout => \sc0|sc0|Mux2~11_combout\);

-- Location: LCCOMB_X75_Y41_N16
\sc0|sc0|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~17_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc38|qp\(7)) # ((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((!\sc0|sc2|Bloque_5|qp\(0) & \sc0|sc42|qp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc38|qp\(7),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc42|qp\(7),
	combout => \sc0|sc0|Mux2~17_combout\);

-- Location: LCCOMB_X75_Y41_N8
\sc0|sc0|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~18_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~17_combout\ & (\sc0|sc37|qp\(7))) # (!\sc0|sc0|Mux2~17_combout\ & ((\sc0|sc41|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc37|qp\(7),
	datac => \sc0|sc41|qp\(7),
	datad => \sc0|sc0|Mux2~17_combout\,
	combout => \sc0|sc0|Mux2~18_combout\);

-- Location: LCCOMB_X75_Y41_N18
\sc0|sc0|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~12_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc40|qp\(7)) # ((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc44|qp\(7) & !\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc40|qp\(7),
	datac => \sc0|sc44|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux2~12_combout\);

-- Location: LCCOMB_X75_Y41_N22
\sc0|sc0|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~12_combout\ & (\sc0|sc39|qp\(7))) # (!\sc0|sc0|Mux2~12_combout\ & ((\sc0|sc43|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc39|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc43|qp\(7),
	datad => \sc0|sc0|Mux2~12_combout\,
	combout => \sc0|sc0|Mux2~13_combout\);

-- Location: LCCOMB_X75_Y41_N4
\sc0|sc51|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[7]~feeder_combout\ = \sc0|sc50|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(7),
	combout => \sc0|sc51|qp[7]~feeder_combout\);

-- Location: FF_X75_Y41_N5
\sc0|sc51|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(7));

-- Location: FF_X75_Y41_N11
\sc0|sc52|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(7));

-- Location: LCCOMB_X75_Y41_N10
\sc0|sc0|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(7))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc51|qp\(7),
	datac => \sc0|sc52|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux2~14_combout\);

-- Location: LCCOMB_X75_Y41_N6
\sc0|sc0|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux2~14_combout\ & (\sc0|sc47|qp\(7))) # (!\sc0|sc0|Mux2~14_combout\ & ((\sc0|sc48|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(7),
	datac => \sc0|sc48|qp\(7),
	datad => \sc0|sc0|Mux2~14_combout\,
	combout => \sc0|sc0|Mux2~15_combout\);

-- Location: LCCOMB_X75_Y41_N2
\sc0|sc0|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~16_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1)) # ((\sc0|sc0|Mux2~13_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux2~13_combout\,
	datad => \sc0|sc0|Mux2~15_combout\,
	combout => \sc0|sc0|Mux2~16_combout\);

-- Location: LCCOMB_X72_Y41_N14
\sc0|sc0|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~19_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~16_combout\ & ((\sc0|sc0|Mux2~18_combout\))) # (!\sc0|sc0|Mux2~16_combout\ & (\sc0|sc0|Mux2~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux2~11_combout\,
	datac => \sc0|sc0|Mux2~18_combout\,
	datad => \sc0|sc0|Mux2~16_combout\,
	combout => \sc0|sc0|Mux2~19_combout\);

-- Location: LCCOMB_X73_Y41_N0
\sc0|sc0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc33|qp\(7))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc35|qp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc33|qp\(7),
	datac => \sc0|sc35|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~0_combout\);

-- Location: LCCOMB_X73_Y41_N20
\sc0|sc0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux2~0_combout\ & ((\sc0|sc25|qp\(7)))) # (!\sc0|sc0|Mux2~0_combout\ & (\sc0|sc27|qp\(7))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc27|qp\(7),
	datac => \sc0|sc25|qp\(7),
	datad => \sc0|sc0|Mux2~0_combout\,
	combout => \sc0|sc0|Mux2~1_combout\);

-- Location: LCCOMB_X73_Y41_N6
\sc0|sc0|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc23|qp\(7)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc31|qp\(7) & ((!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc31|qp\(7),
	datac => \sc0|sc23|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~7_combout\);

-- Location: LCCOMB_X72_Y41_N26
\sc0|sc0|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~8_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~7_combout\ & ((\sc0|sc21|qp\(7)))) # (!\sc0|sc0|Mux2~7_combout\ & (\sc0|sc29|qp\(7))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc29|qp\(7),
	datac => \sc0|sc21|qp\(7),
	datad => \sc0|sc0|Mux2~7_combout\,
	combout => \sc0|sc0|Mux2~8_combout\);

-- Location: LCCOMB_X73_Y41_N26
\sc0|sc0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~2_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc24|qp\(7)) # ((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc32|qp\(7) & !\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc24|qp\(7),
	datac => \sc0|sc32|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~2_combout\);

-- Location: LCCOMB_X73_Y41_N2
\sc0|sc0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~3_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~2_combout\ & (\sc0|sc22|qp\(7))) # (!\sc0|sc0|Mux2~2_combout\ & ((\sc0|sc30|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(7),
	datad => \sc0|sc0|Mux2~2_combout\,
	combout => \sc0|sc0|Mux2~3_combout\);

-- Location: LCCOMB_X73_Y41_N4
\sc0|sc0|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc34|qp\(7)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc36|qp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc36|qp\(7),
	datac => \sc0|sc34|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~4_combout\);

-- Location: LCCOMB_X73_Y41_N12
\sc0|sc0|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~5_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux2~4_combout\ & (\sc0|sc26|qp\(7))) # (!\sc0|sc0|Mux2~4_combout\ & ((\sc0|sc28|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc26|qp\(7),
	datac => \sc0|sc28|qp\(7),
	datad => \sc0|sc0|Mux2~4_combout\,
	combout => \sc0|sc0|Mux2~5_combout\);

-- Location: LCCOMB_X73_Y41_N16
\sc0|sc0|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux2~3_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux2~3_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc0|Mux2~5_combout\,
	combout => \sc0|sc0|Mux2~6_combout\);

-- Location: LCCOMB_X72_Y41_N0
\sc0|sc0|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~6_combout\ & ((\sc0|sc0|Mux2~8_combout\))) # (!\sc0|sc0|Mux2~6_combout\ & (\sc0|sc0|Mux2~1_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux2~1_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux2~8_combout\,
	datad => \sc0|sc0|Mux2~6_combout\,
	combout => \sc0|sc0|Mux2~9_combout\);

-- Location: LCCOMB_X72_Y41_N12
\sc0|sc0|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux2~9_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc0|Mux2~19_combout\,
	datad => \sc0|sc0|Mux2~9_combout\,
	combout => \sc0|sc0|Mux2~20_combout\);

-- Location: LCCOMB_X76_Y41_N24
\sc0|sc0|Mux2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~21_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc11|qp\(7)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc19|qp\(7) & ((!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc19|qp\(7),
	datac => \sc0|sc11|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~21_combout\);

-- Location: LCCOMB_X76_Y41_N20
\sc0|sc0|Mux2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~22_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~21_combout\ & (\sc0|sc9|qp\(7))) # (!\sc0|sc0|Mux2~21_combout\ & ((\sc0|sc17|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc17|qp\(7),
	datad => \sc0|sc0|Mux2~21_combout\,
	combout => \sc0|sc0|Mux2~22_combout\);

-- Location: LCCOMB_X76_Y41_N16
\sc0|sc0|Mux2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~28_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc13|qp\(7)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc15|qp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc15|qp\(7),
	datac => \sc0|sc13|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~28_combout\);

-- Location: LCCOMB_X76_Y41_N14
\sc0|sc0|Mux2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~29_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux2~28_combout\ & (\sc0|sc5|qp\(7))) # (!\sc0|sc0|Mux2~28_combout\ & ((\sc0|sc7|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc5|qp\(7),
	datac => \sc0|sc7|qp\(7),
	datad => \sc0|sc0|Mux2~28_combout\,
	combout => \sc0|sc0|Mux2~29_combout\);

-- Location: LCCOMB_X72_Y41_N6
\sc0|sc0|Mux2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~23_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc14|qp\(7)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc16|qp\(7) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc16|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc14|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux2~23_combout\);

-- Location: LCCOMB_X72_Y41_N8
\sc0|sc0|Mux2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~24_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux2~23_combout\ & ((\sc0|sc6|qp\(7)))) # (!\sc0|sc0|Mux2~23_combout\ & (\sc0|sc8|qp\(7))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux2~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc8|qp\(7),
	datac => \sc0|sc6|qp\(7),
	datad => \sc0|sc0|Mux2~23_combout\,
	combout => \sc0|sc0|Mux2~24_combout\);

-- Location: LCCOMB_X72_Y41_N4
\sc0|sc0|Mux2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~25_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc12|qp\(7))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc20|qp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc12|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc20|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux2~25_combout\);

-- Location: LCCOMB_X72_Y41_N20
\sc0|sc0|Mux2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~26_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux2~25_combout\ & ((\sc0|sc10|qp\(7)))) # (!\sc0|sc0|Mux2~25_combout\ & (\sc0|sc18|qp\(7))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc18|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc10|qp\(7),
	datad => \sc0|sc0|Mux2~25_combout\,
	combout => \sc0|sc0|Mux2~26_combout\);

-- Location: LCCOMB_X72_Y41_N24
\sc0|sc0|Mux2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~27_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc0|Mux2~24_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux2~24_combout\,
	datad => \sc0|sc0|Mux2~26_combout\,
	combout => \sc0|sc0|Mux2~27_combout\);

-- Location: LCCOMB_X72_Y41_N16
\sc0|sc0|Mux2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~30_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~27_combout\ & ((\sc0|sc0|Mux2~29_combout\))) # (!\sc0|sc0|Mux2~27_combout\ & (\sc0|sc0|Mux2~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux2~22_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux2~29_combout\,
	datad => \sc0|sc0|Mux2~27_combout\,
	combout => \sc0|sc0|Mux2~30_combout\);

-- Location: LCCOMB_X72_Y41_N22
\sc0|sc0|Mux2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~31_combout\ = (\sc0|sc0|Mux6~3_combout\ & (\sc0|sc0|Mux6~2_combout\ & (\sc1|c0|qp\(7)))) # (!\sc0|sc0|Mux6~3_combout\ & (((\sc0|sc0|Mux2~30_combout\)) # (!\sc0|sc0|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~3_combout\,
	datab => \sc0|sc0|Mux6~2_combout\,
	datac => \sc1|c0|qp\(7),
	datad => \sc0|sc0|Mux2~30_combout\,
	combout => \sc0|sc0|Mux2~31_combout\);

-- Location: LCCOMB_X72_Y41_N28
\sc0|sc0|Mux2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux2~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux2~31_combout\ & (\sc0|sc4|qp\(7))) # (!\sc0|sc0|Mux2~31_combout\ & ((\sc0|sc3|qp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(7),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(7),
	datad => \sc0|sc0|Mux2~31_combout\,
	combout => \sc0|sc0|Mux2~32_combout\);

-- Location: LCCOMB_X72_Y41_N30
\sc0|sc0|Mux2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~33_combout\ = (\sc0|sc0|Mux2~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux2~20_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux2~32_combout\,
	combout => \sc0|sc0|Mux2~33_combout\);

-- Location: IOIBUF_X60_Y0_N15
\X[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: FF_X70_Y39_N9
\sc1|c0|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[8]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(8));

-- Location: FF_X70_Y39_N31
\sc0|sc3|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(8));

-- Location: FF_X69_Y39_N17
\sc0|sc4|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(8));

-- Location: FF_X70_Y39_N5
\sc0|sc5|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(8));

-- Location: FF_X74_Y38_N25
\sc0|sc6|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(8));

-- Location: FF_X70_Y39_N15
\sc0|sc7|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc6|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(8));

-- Location: FF_X70_Y39_N13
\sc0|sc8|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(8));

-- Location: FF_X69_Y39_N11
\sc0|sc9|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc8|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(8));

-- Location: LCCOMB_X74_Y38_N30
\sc0|sc10|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc10|qp[8]~feeder_combout\ = \sc0|sc9|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc9|qp\(8),
	combout => \sc0|sc10|qp[8]~feeder_combout\);

-- Location: FF_X74_Y38_N31
\sc0|sc10|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc10|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(8));

-- Location: LCCOMB_X69_Y39_N14
\sc0|sc11|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc11|qp[8]~feeder_combout\ = \sc0|sc10|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc10|qp\(8),
	combout => \sc0|sc11|qp[8]~feeder_combout\);

-- Location: FF_X69_Y39_N15
\sc0|sc11|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc11|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(8));

-- Location: FF_X70_Y39_N7
\sc0|sc12|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc11|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(8));

-- Location: LCCOMB_X73_Y37_N30
\sc0|sc13|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc13|qp[8]~feeder_combout\ = \sc0|sc12|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc12|qp\(8),
	combout => \sc0|sc13|qp[8]~feeder_combout\);

-- Location: FF_X73_Y37_N31
\sc0|sc13|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc13|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(8));

-- Location: FF_X73_Y37_N25
\sc0|sc14|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc13|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(8));

-- Location: FF_X70_Y39_N11
\sc0|sc15|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(8));

-- Location: FF_X69_Y39_N13
\sc0|sc16|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc15|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(8));

-- Location: FF_X73_Y37_N1
\sc0|sc17|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc16|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(8));

-- Location: FF_X73_Y37_N27
\sc0|sc18|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(8));

-- Location: LCCOMB_X73_Y37_N0
\sc0|sc0|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~21_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc17|qp\(8)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc18|qp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc18|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc17|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~21_combout\);

-- Location: LCCOMB_X73_Y37_N24
\sc0|sc0|Mux1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~22_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~21_combout\ & (\sc0|sc13|qp\(8))) # (!\sc0|sc0|Mux1~21_combout\ & ((\sc0|sc14|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc13|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc14|qp\(8),
	datad => \sc0|sc0|Mux1~21_combout\,
	combout => \sc0|sc0|Mux1~22_combout\);

-- Location: LCCOMB_X74_Y38_N16
\sc0|sc0|Mux1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~28_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc6|qp\(8)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc10|qp\(8) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc10|qp\(8),
	datac => \sc0|sc6|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~28_combout\);

-- Location: LCCOMB_X70_Y39_N4
\sc0|sc0|Mux1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~29_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux1~28_combout\ & ((\sc0|sc5|qp\(8)))) # (!\sc0|sc0|Mux1~28_combout\ & (\sc0|sc9|qp\(8))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc9|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc5|qp\(8),
	datad => \sc0|sc0|Mux1~28_combout\,
	combout => \sc0|sc0|Mux1~29_combout\);

-- Location: LCCOMB_X70_Y39_N6
\sc0|sc0|Mux1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~23_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc8|qp\(8)) # ((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc12|qp\(8) & !\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc8|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc12|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~23_combout\);

-- Location: LCCOMB_X70_Y39_N14
\sc0|sc0|Mux1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~24_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux1~23_combout\ & ((\sc0|sc7|qp\(8)))) # (!\sc0|sc0|Mux1~23_combout\ & (\sc0|sc11|qp\(8))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc11|qp\(8),
	datac => \sc0|sc7|qp\(8),
	datad => \sc0|sc0|Mux1~23_combout\,
	combout => \sc0|sc0|Mux1~24_combout\);

-- Location: FF_X70_Y39_N19
\sc0|sc19|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(8));

-- Location: LCCOMB_X70_Y39_N22
\sc0|sc20|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc20|qp[8]~feeder_combout\ = \sc0|sc19|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc19|qp\(8),
	combout => \sc0|sc20|qp[8]~feeder_combout\);

-- Location: FF_X70_Y39_N23
\sc0|sc20|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc20|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(8));

-- Location: LCCOMB_X70_Y39_N18
\sc0|sc0|Mux1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~25_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc19|qp\(8)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc20|qp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc20|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc19|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~25_combout\);

-- Location: LCCOMB_X70_Y39_N10
\sc0|sc0|Mux1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~26_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~25_combout\ & ((\sc0|sc15|qp\(8)))) # (!\sc0|sc0|Mux1~25_combout\ & (\sc0|sc16|qp\(8))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc16|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc15|qp\(8),
	datad => \sc0|sc0|Mux1~25_combout\,
	combout => \sc0|sc0|Mux1~26_combout\);

-- Location: LCCOMB_X70_Y39_N16
\sc0|sc0|Mux1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~27_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux1~24_combout\)) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux1~24_combout\,
	datad => \sc0|sc0|Mux1~26_combout\,
	combout => \sc0|sc0|Mux1~27_combout\);

-- Location: LCCOMB_X70_Y39_N2
\sc0|sc0|Mux1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~30_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux1~27_combout\ & ((\sc0|sc0|Mux1~29_combout\))) # (!\sc0|sc0|Mux1~27_combout\ & (\sc0|sc0|Mux1~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux1~22_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux1~29_combout\,
	datad => \sc0|sc0|Mux1~27_combout\,
	combout => \sc0|sc0|Mux1~30_combout\);

-- Location: LCCOMB_X70_Y39_N8
\sc0|sc0|Mux1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(8))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux1~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(8),
	datad => \sc0|sc0|Mux1~30_combout\,
	combout => \sc0|sc0|Mux1~31_combout\);

-- Location: LCCOMB_X70_Y39_N30
\sc0|sc0|Mux1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux1~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux1~31_combout\ & (\sc0|sc4|qp\(8))) # (!\sc0|sc0|Mux1~31_combout\ & ((\sc0|sc3|qp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(8),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(8),
	datad => \sc0|sc0|Mux1~31_combout\,
	combout => \sc0|sc0|Mux1~32_combout\);

-- Location: FF_X70_Y39_N25
\sc0|sc21|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc20|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(8));

-- Location: FF_X70_Y37_N11
\sc0|sc22|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc21|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(8));

-- Location: LCCOMB_X69_Y39_N28
\sc0|sc23|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc23|qp[8]~feeder_combout\ = \sc0|sc22|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc22|qp\(8),
	combout => \sc0|sc23|qp[8]~feeder_combout\);

-- Location: FF_X69_Y39_N29
\sc0|sc23|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc23|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(8));

-- Location: FF_X70_Y37_N27
\sc0|sc24|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc23|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(8));

-- Location: FF_X70_Y37_N25
\sc0|sc25|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(8));

-- Location: LCCOMB_X70_Y37_N0
\sc0|sc26|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[8]~feeder_combout\ = \sc0|sc25|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(8),
	combout => \sc0|sc26|qp[8]~feeder_combout\);

-- Location: FF_X70_Y37_N1
\sc0|sc26|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(8));

-- Location: FF_X70_Y37_N23
\sc0|sc27|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(8));

-- Location: FF_X70_Y37_N5
\sc0|sc28|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc27|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(8));

-- Location: FF_X70_Y37_N13
\sc0|sc29|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(8));

-- Location: LCCOMB_X70_Y37_N14
\sc0|sc30|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc30|qp[8]~feeder_combout\ = \sc0|sc29|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc29|qp\(8),
	combout => \sc0|sc30|qp[8]~feeder_combout\);

-- Location: FF_X70_Y37_N15
\sc0|sc30|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc30|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(8));

-- Location: FF_X70_Y37_N17
\sc0|sc31|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(8));

-- Location: LCCOMB_X70_Y37_N12
\sc0|sc0|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc29|qp\(8)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc31|qp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc31|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc29|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux1~7_combout\);

-- Location: LCCOMB_X70_Y39_N24
\sc0|sc0|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~8_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux1~7_combout\ & ((\sc0|sc21|qp\(8)))) # (!\sc0|sc0|Mux1~7_combout\ & (\sc0|sc23|qp\(8))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc23|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc21|qp\(8),
	datad => \sc0|sc0|Mux1~7_combout\,
	combout => \sc0|sc0|Mux1~8_combout\);

-- Location: FF_X70_Y37_N31
\sc0|sc32|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc31|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(8));

-- Location: LCCOMB_X70_Y37_N16
\sc0|sc0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~2_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc30|qp\(8)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc32|qp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc32|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc30|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux1~2_combout\);

-- Location: LCCOMB_X70_Y37_N24
\sc0|sc0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~3_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux1~2_combout\ & (\sc0|sc22|qp\(8))) # (!\sc0|sc0|Mux1~2_combout\ & ((\sc0|sc24|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc24|qp\(8),
	datad => \sc0|sc0|Mux1~2_combout\,
	combout => \sc0|sc0|Mux1~3_combout\);

-- Location: FF_X70_Y37_N29
\sc0|sc33|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(8));

-- Location: LCCOMB_X70_Y37_N8
\sc0|sc34|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc34|qp[8]~feeder_combout\ = \sc0|sc33|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc33|qp\(8),
	combout => \sc0|sc34|qp[8]~feeder_combout\);

-- Location: FF_X70_Y37_N9
\sc0|sc34|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc34|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(8));

-- Location: FF_X70_Y37_N19
\sc0|sc35|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(8));

-- Location: FF_X70_Y37_N3
\sc0|sc36|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc35|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(8));

-- Location: LCCOMB_X70_Y37_N4
\sc0|sc0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc28|qp\(8)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc36|qp\(8) & ((!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc36|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc28|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux1~4_combout\);

-- Location: LCCOMB_X70_Y37_N22
\sc0|sc0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~5_combout\ = (\sc0|sc0|Mux1~4_combout\ & (((\sc0|sc26|qp\(8)) # (!\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc0|Mux1~4_combout\ & (\sc0|sc34|qp\(8) & ((\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc34|qp\(8),
	datab => \sc0|sc0|Mux1~4_combout\,
	datac => \sc0|sc26|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux1~5_combout\);

-- Location: LCCOMB_X70_Y37_N20
\sc0|sc0|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux1~3_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux1~3_combout\,
	datad => \sc0|sc0|Mux1~5_combout\,
	combout => \sc0|sc0|Mux1~6_combout\);

-- Location: LCCOMB_X70_Y37_N18
\sc0|sc0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc27|qp\(8)) # ((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc35|qp\(8) & !\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc27|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc35|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y37_N28
\sc0|sc0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux1~0_combout\ & (\sc0|sc25|qp\(8))) # (!\sc0|sc0|Mux1~0_combout\ & ((\sc0|sc33|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc25|qp\(8),
	datac => \sc0|sc33|qp\(8),
	datad => \sc0|sc0|Mux1~0_combout\,
	combout => \sc0|sc0|Mux1~1_combout\);

-- Location: LCCOMB_X70_Y39_N26
\sc0|sc0|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux1~6_combout\ & (\sc0|sc0|Mux1~8_combout\)) # (!\sc0|sc0|Mux1~6_combout\ & ((\sc0|sc0|Mux1~1_combout\))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc0|Mux1~8_combout\,
	datac => \sc0|sc0|Mux1~6_combout\,
	datad => \sc0|sc0|Mux1~1_combout\,
	combout => \sc0|sc0|Mux1~9_combout\);

-- Location: FF_X69_Y37_N13
\sc0|sc37|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc36|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(8));

-- Location: FF_X69_Y37_N29
\sc0|sc38|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc37|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(8));

-- Location: FF_X69_Y39_N7
\sc0|sc39|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(8));

-- Location: FF_X70_Y39_N1
\sc0|sc40|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc39|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(8));

-- Location: LCCOMB_X69_Y37_N18
\sc0|sc41|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc41|qp[8]~feeder_combout\ = \sc0|sc40|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc40|qp\(8),
	combout => \sc0|sc41|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N19
\sc0|sc41|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc41|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(8));

-- Location: LCCOMB_X69_Y37_N26
\sc0|sc42|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[8]~feeder_combout\ = \sc0|sc41|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(8),
	combout => \sc0|sc42|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N27
\sc0|sc42|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(8));

-- Location: FF_X69_Y37_N31
\sc0|sc43|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(8));

-- Location: FF_X69_Y37_N9
\sc0|sc44|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc43|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(8));

-- Location: LCCOMB_X69_Y37_N8
\sc0|sc0|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~10_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc43|qp\(8))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc44|qp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc44|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~10_combout\);

-- Location: LCCOMB_X70_Y39_N0
\sc0|sc0|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~10_combout\ & (\sc0|sc39|qp\(8))) # (!\sc0|sc0|Mux1~10_combout\ & ((\sc0|sc40|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc39|qp\(8),
	datac => \sc0|sc40|qp\(8),
	datad => \sc0|sc0|Mux1~10_combout\,
	combout => \sc0|sc0|Mux1~11_combout\);

-- Location: LCCOMB_X69_Y37_N30
\sc0|sc0|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~17_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc41|qp\(8))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc42|qp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc41|qp\(8),
	datac => \sc0|sc42|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~17_combout\);

-- Location: LCCOMB_X69_Y37_N28
\sc0|sc0|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~18_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~17_combout\ & (\sc0|sc37|qp\(8))) # (!\sc0|sc0|Mux1~17_combout\ & ((\sc0|sc38|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc37|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc38|qp\(8),
	datad => \sc0|sc0|Mux1~17_combout\,
	combout => \sc0|sc0|Mux1~18_combout\);

-- Location: FF_X69_Y37_N21
\sc0|sc45|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(8));

-- Location: LCCOMB_X69_Y37_N4
\sc0|sc46|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc46|qp[8]~feeder_combout\ = \sc0|sc45|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc45|qp\(8),
	combout => \sc0|sc46|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N5
\sc0|sc46|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc46|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(8));

-- Location: FF_X69_Y37_N25
\sc0|sc47|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(8));

-- Location: LCCOMB_X69_Y37_N22
\sc0|sc48|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[8]~feeder_combout\ = \sc0|sc47|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(8),
	combout => \sc0|sc48|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N23
\sc0|sc48|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(8));

-- Location: FF_X69_Y37_N3
\sc0|sc49|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(8));

-- Location: LCCOMB_X69_Y37_N10
\sc0|sc50|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc50|qp[8]~feeder_combout\ = \sc0|sc49|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc49|qp\(8),
	combout => \sc0|sc50|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N11
\sc0|sc50|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc50|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(8));

-- Location: LCCOMB_X69_Y37_N14
\sc0|sc51|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[8]~feeder_combout\ = \sc0|sc50|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(8),
	combout => \sc0|sc51|qp[8]~feeder_combout\);

-- Location: FF_X69_Y37_N15
\sc0|sc51|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(8));

-- Location: FF_X69_Y37_N1
\sc0|sc52|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(8));

-- Location: LCCOMB_X69_Y37_N0
\sc0|sc0|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~14_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc51|qp\(8))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc52|qp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc51|qp\(8),
	datac => \sc0|sc52|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~14_combout\);

-- Location: LCCOMB_X69_Y37_N2
\sc0|sc0|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux1~14_combout\ & (\sc0|sc47|qp\(8))) # (!\sc0|sc0|Mux1~14_combout\ & ((\sc0|sc48|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(8),
	datac => \sc0|sc48|qp\(8),
	datad => \sc0|sc0|Mux1~14_combout\,
	combout => \sc0|sc0|Mux1~15_combout\);

-- Location: LCCOMB_X69_Y37_N24
\sc0|sc0|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~12_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc46|qp\(8)) # (\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc50|qp\(8) & ((!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc50|qp\(8),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc46|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~12_combout\);

-- Location: LCCOMB_X69_Y37_N20
\sc0|sc0|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux1~12_combout\ & ((\sc0|sc45|qp\(8)))) # (!\sc0|sc0|Mux1~12_combout\ & (\sc0|sc49|qp\(8))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc49|qp\(8),
	datac => \sc0|sc45|qp\(8),
	datad => \sc0|sc0|Mux1~12_combout\,
	combout => \sc0|sc0|Mux1~13_combout\);

-- Location: LCCOMB_X69_Y37_N6
\sc0|sc0|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~16_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux1~13_combout\))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc0|Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc0|Mux1~15_combout\,
	datad => \sc0|sc0|Mux1~13_combout\,
	combout => \sc0|sc0|Mux1~16_combout\);

-- Location: LCCOMB_X70_Y39_N28
\sc0|sc0|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~19_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux1~16_combout\ & ((\sc0|sc0|Mux1~18_combout\))) # (!\sc0|sc0|Mux1~16_combout\ & (\sc0|sc0|Mux1~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc0|Mux1~11_combout\,
	datac => \sc0|sc0|Mux1~18_combout\,
	datad => \sc0|sc0|Mux1~16_combout\,
	combout => \sc0|sc0|Mux1~19_combout\);

-- Location: LCCOMB_X70_Y39_N20
\sc0|sc0|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux1~9_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc0|Mux1~9_combout\,
	datad => \sc0|sc0|Mux1~19_combout\,
	combout => \sc0|sc0|Mux1~20_combout\);

-- Location: LCCOMB_X70_Y39_N12
\sc0|sc0|Mux1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~33_combout\ = (\sc0|sc0|Mux1~20_combout\) # ((\sc0|sc0|Mux1~32_combout\ & \sc0|sc2|Bloque_5|qp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux1~32_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux1~20_combout\,
	combout => \sc0|sc0|Mux1~33_combout\);

-- Location: IOIBUF_X60_Y0_N8
\X[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: FF_X79_Y39_N27
\sc1|c0|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[9]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(9));

-- Location: FF_X79_Y39_N19
\sc0|sc3|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(9));

-- Location: LCCOMB_X80_Y39_N4
\sc0|sc4|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[9]~feeder_combout\ = \sc0|sc3|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(9),
	combout => \sc0|sc4|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N5
\sc0|sc4|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(9));

-- Location: FF_X80_Y39_N17
\sc0|sc5|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(9));

-- Location: FF_X79_Y39_N23
\sc0|sc6|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(9));

-- Location: LCCOMB_X80_Y39_N14
\sc0|sc7|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc7|qp[9]~feeder_combout\ = \sc0|sc6|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc6|qp\(9),
	combout => \sc0|sc7|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N15
\sc0|sc7|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc7|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc7|qp\(9));

-- Location: FF_X79_Y39_N1
\sc0|sc8|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc7|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc8|qp\(9));

-- Location: FF_X80_Y39_N27
\sc0|sc9|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc8|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc9|qp\(9));

-- Location: FF_X79_Y39_N11
\sc0|sc10|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc9|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc10|qp\(9));

-- Location: LCCOMB_X80_Y39_N6
\sc0|sc11|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc11|qp[9]~feeder_combout\ = \sc0|sc10|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc10|qp\(9),
	combout => \sc0|sc11|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N7
\sc0|sc11|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc11|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc11|qp\(9));

-- Location: LCCOMB_X80_Y39_N10
\sc0|sc12|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc12|qp[9]~feeder_combout\ = \sc0|sc11|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc11|qp\(9),
	combout => \sc0|sc12|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N11
\sc0|sc12|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc12|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc12|qp\(9));

-- Location: LCCOMB_X80_Y39_N8
\sc0|sc13|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc13|qp[9]~feeder_combout\ = \sc0|sc12|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc12|qp\(9),
	combout => \sc0|sc13|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N9
\sc0|sc13|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc13|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc13|qp\(9));

-- Location: FF_X79_Y39_N15
\sc0|sc14|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc13|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc14|qp\(9));

-- Location: FF_X80_Y39_N29
\sc0|sc15|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc14|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc15|qp\(9));

-- Location: LCCOMB_X79_Y39_N24
\sc0|sc16|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc16|qp[9]~feeder_combout\ = \sc0|sc15|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc15|qp\(9),
	combout => \sc0|sc16|qp[9]~feeder_combout\);

-- Location: FF_X79_Y39_N25
\sc0|sc16|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc16|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc16|qp\(9));

-- Location: LCCOMB_X80_Y39_N0
\sc0|sc17|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc17|qp[9]~feeder_combout\ = \sc0|sc16|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc16|qp\(9),
	combout => \sc0|sc17|qp[9]~feeder_combout\);

-- Location: FF_X80_Y39_N1
\sc0|sc17|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc17|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc17|qp\(9));

-- Location: FF_X79_Y39_N17
\sc0|sc18|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc17|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc18|qp\(9));

-- Location: FF_X80_Y39_N23
\sc0|sc19|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc18|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc19|qp\(9));

-- Location: LCCOMB_X79_Y39_N8
\sc0|sc20|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc20|qp[9]~feeder_combout\ = \sc0|sc19|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc19|qp\(9),
	combout => \sc0|sc20|qp[9]~feeder_combout\);

-- Location: FF_X79_Y39_N9
\sc0|sc20|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc20|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc20|qp\(9));

-- Location: LCCOMB_X80_Y37_N2
\sc0|sc21|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc21|qp[9]~feeder_combout\ = \sc0|sc20|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc20|qp\(9),
	combout => \sc0|sc21|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N3
\sc0|sc21|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc21|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc21|qp\(9));

-- Location: LCCOMB_X80_Y37_N10
\sc0|sc22|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc22|qp[9]~feeder_combout\ = \sc0|sc21|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc21|qp\(9),
	combout => \sc0|sc22|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N11
\sc0|sc22|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc22|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc22|qp\(9));

-- Location: FF_X80_Y37_N19
\sc0|sc23|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc22|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc23|qp\(9));

-- Location: FF_X80_Y37_N9
\sc0|sc24|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc23|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc24|qp\(9));

-- Location: FF_X80_Y37_N31
\sc0|sc25|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc24|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc25|qp\(9));

-- Location: LCCOMB_X80_Y37_N22
\sc0|sc26|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc26|qp[9]~feeder_combout\ = \sc0|sc25|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc25|qp\(9),
	combout => \sc0|sc26|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N23
\sc0|sc26|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc26|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc26|qp\(9));

-- Location: FF_X80_Y37_N13
\sc0|sc27|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc26|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc27|qp\(9));

-- Location: LCCOMB_X80_Y37_N4
\sc0|sc28|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc28|qp[9]~feeder_combout\ = \sc0|sc27|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc27|qp\(9),
	combout => \sc0|sc28|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N5
\sc0|sc28|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc28|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc28|qp\(9));

-- Location: FF_X80_Y37_N1
\sc0|sc29|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc28|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc29|qp\(9));

-- Location: FF_X80_Y37_N15
\sc0|sc30|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc29|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc30|qp\(9));

-- Location: FF_X80_Y37_N25
\sc0|sc31|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc30|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc31|qp\(9));

-- Location: LCCOMB_X80_Y37_N26
\sc0|sc32|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc32|qp[9]~feeder_combout\ = \sc0|sc31|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc31|qp\(9),
	combout => \sc0|sc32|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N27
\sc0|sc32|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc32|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc32|qp\(9));

-- Location: FF_X80_Y37_N29
\sc0|sc33|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc32|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc33|qp\(9));

-- Location: FF_X80_Y37_N17
\sc0|sc34|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc33|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc34|qp\(9));

-- Location: FF_X80_Y37_N7
\sc0|sc35|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc34|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc35|qp\(9));

-- Location: LCCOMB_X80_Y37_N20
\sc0|sc36|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc36|qp[9]~feeder_combout\ = \sc0|sc35|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc35|qp\(9),
	combout => \sc0|sc36|qp[9]~feeder_combout\);

-- Location: FF_X80_Y37_N21
\sc0|sc36|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc36|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc36|qp\(9));

-- Location: LCCOMB_X79_Y37_N0
\sc0|sc37|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc37|qp[9]~feeder_combout\ = \sc0|sc36|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc36|qp\(9),
	combout => \sc0|sc37|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N1
\sc0|sc37|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc37|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc37|qp\(9));

-- Location: LCCOMB_X79_Y37_N30
\sc0|sc38|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc38|qp[9]~feeder_combout\ = \sc0|sc37|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc37|qp\(9),
	combout => \sc0|sc38|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N31
\sc0|sc38|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc38|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc38|qp\(9));

-- Location: FF_X79_Y37_N17
\sc0|sc39|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc38|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc39|qp\(9));

-- Location: LCCOMB_X79_Y37_N6
\sc0|sc40|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc40|qp[9]~feeder_combout\ = \sc0|sc39|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc39|qp\(9),
	combout => \sc0|sc40|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N7
\sc0|sc40|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc40|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc40|qp\(9));

-- Location: FF_X79_Y37_N19
\sc0|sc41|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc40|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc41|qp\(9));

-- Location: LCCOMB_X79_Y37_N4
\sc0|sc42|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc42|qp[9]~feeder_combout\ = \sc0|sc41|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc41|qp\(9),
	combout => \sc0|sc42|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N5
\sc0|sc42|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc42|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc42|qp\(9));

-- Location: FF_X79_Y37_N25
\sc0|sc43|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc42|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc43|qp\(9));

-- Location: LCCOMB_X79_Y37_N14
\sc0|sc44|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc44|qp[9]~feeder_combout\ = \sc0|sc43|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc43|qp\(9),
	combout => \sc0|sc44|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N15
\sc0|sc44|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc44|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc44|qp\(9));

-- Location: FF_X79_Y37_N11
\sc0|sc45|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc44|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc45|qp\(9));

-- Location: FF_X79_Y37_N23
\sc0|sc46|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc45|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc46|qp\(9));

-- Location: FF_X79_Y37_N13
\sc0|sc47|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc46|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc47|qp\(9));

-- Location: LCCOMB_X79_Y37_N26
\sc0|sc48|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc48|qp[9]~feeder_combout\ = \sc0|sc47|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc47|qp\(9),
	combout => \sc0|sc48|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N27
\sc0|sc48|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc48|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc48|qp\(9));

-- Location: FF_X79_Y37_N9
\sc0|sc49|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc48|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc49|qp\(9));

-- Location: FF_X79_Y37_N3
\sc0|sc50|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc49|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc50|qp\(9));

-- Location: LCCOMB_X79_Y37_N2
\sc0|sc0|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~10_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc49|qp\(9)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc50|qp\(9) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc49|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc50|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux0~10_combout\);

-- Location: LCCOMB_X79_Y37_N22
\sc0|sc0|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~11_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux0~10_combout\ & (\sc0|sc45|qp\(9))) # (!\sc0|sc0|Mux0~10_combout\ & ((\sc0|sc46|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc45|qp\(9),
	datac => \sc0|sc46|qp\(9),
	datad => \sc0|sc0|Mux0~10_combout\,
	combout => \sc0|sc0|Mux0~11_combout\);

-- Location: LCCOMB_X79_Y37_N24
\sc0|sc0|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~17_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc38|qp\(9))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc42|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc38|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc42|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux0~17_combout\);

-- Location: LCCOMB_X79_Y37_N18
\sc0|sc0|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~18_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux0~17_combout\ & (\sc0|sc37|qp\(9))) # (!\sc0|sc0|Mux0~17_combout\ & ((\sc0|sc41|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc37|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc41|qp\(9),
	datad => \sc0|sc0|Mux0~17_combout\,
	combout => \sc0|sc0|Mux0~18_combout\);

-- Location: LCCOMB_X79_Y37_N28
\sc0|sc51|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc51|qp[9]~feeder_combout\ = \sc0|sc50|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc50|qp\(9),
	combout => \sc0|sc51|qp[9]~feeder_combout\);

-- Location: FF_X79_Y37_N29
\sc0|sc51|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc51|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc51|qp\(9));

-- Location: FF_X79_Y37_N21
\sc0|sc52|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc51|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc52|qp\(9));

-- Location: LCCOMB_X79_Y37_N20
\sc0|sc0|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~14_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc51|qp\(9)) # ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc52|qp\(9) & !\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc51|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc52|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux0~14_combout\);

-- Location: LCCOMB_X79_Y37_N8
\sc0|sc0|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~15_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux0~14_combout\ & (\sc0|sc47|qp\(9))) # (!\sc0|sc0|Mux0~14_combout\ & ((\sc0|sc48|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (((\sc0|sc0|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc47|qp\(9),
	datac => \sc0|sc48|qp\(9),
	datad => \sc0|sc0|Mux0~14_combout\,
	combout => \sc0|sc0|Mux0~15_combout\);

-- Location: LCCOMB_X79_Y37_N10
\sc0|sc0|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~12_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc40|qp\(9))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc44|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc40|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc44|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc0|Mux0~12_combout\);

-- Location: LCCOMB_X79_Y37_N16
\sc0|sc0|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~13_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux0~12_combout\ & ((\sc0|sc39|qp\(9)))) # (!\sc0|sc0|Mux0~12_combout\ & (\sc0|sc43|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc43|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc39|qp\(9),
	datad => \sc0|sc0|Mux0~12_combout\,
	combout => \sc0|sc0|Mux0~13_combout\);

-- Location: LCCOMB_X79_Y39_N2
\sc0|sc0|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~16_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux0~13_combout\))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc0|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc0|Mux0~15_combout\,
	datad => \sc0|sc0|Mux0~13_combout\,
	combout => \sc0|sc0|Mux0~16_combout\);

-- Location: LCCOMB_X79_Y39_N4
\sc0|sc0|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~19_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux0~16_combout\ & ((\sc0|sc0|Mux0~18_combout\))) # (!\sc0|sc0|Mux0~16_combout\ & (\sc0|sc0|Mux0~11_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc0|Mux0~11_combout\,
	datac => \sc0|sc0|Mux0~18_combout\,
	datad => \sc0|sc0|Mux0~16_combout\,
	combout => \sc0|sc0|Mux0~19_combout\);

-- Location: LCCOMB_X80_Y37_N6
\sc0|sc0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc33|qp\(9))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc35|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc33|qp\(9),
	datac => \sc0|sc35|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y37_N30
\sc0|sc0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux0~0_combout\ & ((\sc0|sc25|qp\(9)))) # (!\sc0|sc0|Mux0~0_combout\ & (\sc0|sc27|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc27|qp\(9),
	datac => \sc0|sc25|qp\(9),
	datad => \sc0|sc0|Mux0~0_combout\,
	combout => \sc0|sc0|Mux0~1_combout\);

-- Location: LCCOMB_X80_Y37_N18
\sc0|sc0|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~7_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc23|qp\(9)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc31|qp\(9) & ((!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc31|qp\(9),
	datac => \sc0|sc23|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~7_combout\);

-- Location: LCCOMB_X80_Y37_N0
\sc0|sc0|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~8_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux0~7_combout\ & (\sc0|sc21|qp\(9))) # (!\sc0|sc0|Mux0~7_combout\ & ((\sc0|sc29|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc21|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc29|qp\(9),
	datad => \sc0|sc0|Mux0~7_combout\,
	combout => \sc0|sc0|Mux0~8_combout\);

-- Location: LCCOMB_X80_Y37_N28
\sc0|sc0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~2_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc24|qp\(9)) # ((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc32|qp\(9) & !\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc24|qp\(9),
	datac => \sc0|sc32|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~2_combout\);

-- Location: LCCOMB_X80_Y37_N14
\sc0|sc0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~3_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux0~2_combout\ & (\sc0|sc22|qp\(9))) # (!\sc0|sc0|Mux0~2_combout\ & ((\sc0|sc30|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc22|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc30|qp\(9),
	datad => \sc0|sc0|Mux0~2_combout\,
	combout => \sc0|sc0|Mux0~3_combout\);

-- Location: LCCOMB_X80_Y37_N16
\sc0|sc0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~4_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc34|qp\(9)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc36|qp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc36|qp\(9),
	datac => \sc0|sc34|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~4_combout\);

-- Location: LCCOMB_X80_Y37_N12
\sc0|sc0|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~5_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux0~4_combout\ & ((\sc0|sc26|qp\(9)))) # (!\sc0|sc0|Mux0~4_combout\ & (\sc0|sc28|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc28|qp\(9),
	datac => \sc0|sc26|qp\(9),
	datad => \sc0|sc0|Mux0~4_combout\,
	combout => \sc0|sc0|Mux0~5_combout\);

-- Location: LCCOMB_X79_Y39_N28
\sc0|sc0|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~6_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux0~3_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux0~3_combout\,
	datad => \sc0|sc0|Mux0~5_combout\,
	combout => \sc0|sc0|Mux0~6_combout\);

-- Location: LCCOMB_X79_Y39_N12
\sc0|sc0|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~9_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux0~6_combout\ & ((\sc0|sc0|Mux0~8_combout\))) # (!\sc0|sc0|Mux0~6_combout\ & (\sc0|sc0|Mux0~1_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux0~1_combout\,
	datab => \sc0|sc0|Mux0~8_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc0|Mux0~6_combout\,
	combout => \sc0|sc0|Mux0~9_combout\);

-- Location: LCCOMB_X79_Y39_N30
\sc0|sc0|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~20_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc0|Mux0~9_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc0|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc0|Mux0~19_combout\,
	datad => \sc0|sc0|Mux0~9_combout\,
	combout => \sc0|sc0|Mux0~20_combout\);

-- Location: LCCOMB_X80_Y39_N24
\sc0|sc0|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~21_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc17|qp\(9)) # (\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc19|qp\(9) & ((!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc19|qp\(9),
	datab => \sc0|sc17|qp\(9),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux0~21_combout\);

-- Location: LCCOMB_X80_Y39_N20
\sc0|sc0|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~22_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux0~21_combout\ & ((\sc0|sc9|qp\(9)))) # (!\sc0|sc0|Mux0~21_combout\ & (\sc0|sc11|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc11|qp\(9),
	datab => \sc0|sc9|qp\(9),
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc0|Mux0~21_combout\,
	combout => \sc0|sc0|Mux0~22_combout\);

-- Location: LCCOMB_X80_Y39_N2
\sc0|sc0|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~28_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc7|qp\(9))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc15|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc7|qp\(9),
	datab => \sc0|sc15|qp\(9),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux0~28_combout\);

-- Location: LCCOMB_X80_Y39_N30
\sc0|sc0|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~29_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux0~28_combout\ & (\sc0|sc5|qp\(9))) # (!\sc0|sc0|Mux0~28_combout\ & ((\sc0|sc13|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc5|qp\(9),
	datab => \sc0|sc13|qp\(9),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc0|Mux0~28_combout\,
	combout => \sc0|sc0|Mux0~29_combout\);

-- Location: LCCOMB_X79_Y39_N0
\sc0|sc0|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~23_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc8|qp\(9)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc16|qp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc16|qp\(9),
	datac => \sc0|sc8|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(3),
	combout => \sc0|sc0|Mux0~23_combout\);

-- Location: LCCOMB_X79_Y39_N22
\sc0|sc0|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~24_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux0~23_combout\ & ((\sc0|sc6|qp\(9)))) # (!\sc0|sc0|Mux0~23_combout\ & (\sc0|sc14|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc14|qp\(9),
	datac => \sc0|sc6|qp\(9),
	datad => \sc0|sc0|Mux0~23_combout\,
	combout => \sc0|sc0|Mux0~24_combout\);

-- Location: LCCOMB_X79_Y39_N16
\sc0|sc0|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~25_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc18|qp\(9)))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc20|qp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc20|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc18|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~25_combout\);

-- Location: LCCOMB_X79_Y39_N10
\sc0|sc0|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~26_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc0|Mux0~25_combout\ & ((\sc0|sc10|qp\(9)))) # (!\sc0|sc0|Mux0~25_combout\ & (\sc0|sc12|qp\(9))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (((\sc0|sc0|Mux0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc12|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc10|qp\(9),
	datad => \sc0|sc0|Mux0~25_combout\,
	combout => \sc0|sc0|Mux0~26_combout\);

-- Location: LCCOMB_X79_Y39_N20
\sc0|sc0|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~27_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc0|Mux0~24_combout\)) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc0|Mux0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc0|Mux0~24_combout\,
	datad => \sc0|sc0|Mux0~26_combout\,
	combout => \sc0|sc0|Mux0~27_combout\);

-- Location: LCCOMB_X79_Y39_N6
\sc0|sc0|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~30_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux0~27_combout\ & ((\sc0|sc0|Mux0~29_combout\))) # (!\sc0|sc0|Mux0~27_combout\ & (\sc0|sc0|Mux0~22_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux0~22_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc0|Mux0~29_combout\,
	datad => \sc0|sc0|Mux0~27_combout\,
	combout => \sc0|sc0|Mux0~30_combout\);

-- Location: LCCOMB_X79_Y39_N26
\sc0|sc0|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~31_combout\ = (\sc0|sc0|Mux6~2_combout\ & ((\sc0|sc0|Mux6~3_combout\ & (\sc1|c0|qp\(9))) # (!\sc0|sc0|Mux6~3_combout\ & ((\sc0|sc0|Mux0~30_combout\))))) # (!\sc0|sc0|Mux6~2_combout\ & (!\sc0|sc0|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux6~2_combout\,
	datab => \sc0|sc0|Mux6~3_combout\,
	datac => \sc1|c0|qp\(9),
	datad => \sc0|sc0|Mux0~30_combout\,
	combout => \sc0|sc0|Mux0~31_combout\);

-- Location: LCCOMB_X79_Y39_N18
\sc0|sc0|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~32_combout\ = (\sc0|sc0|Mux6~0_combout\ & (((\sc0|sc0|Mux0~31_combout\)))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc0|Mux0~31_combout\ & (\sc0|sc4|qp\(9))) # (!\sc0|sc0|Mux0~31_combout\ & ((\sc0|sc3|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(9),
	datab => \sc0|sc0|Mux6~0_combout\,
	datac => \sc0|sc3|qp\(9),
	datad => \sc0|sc0|Mux0~31_combout\,
	combout => \sc0|sc0|Mux0~32_combout\);

-- Location: LCCOMB_X79_Y39_N14
\sc0|sc0|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~33_combout\ = (\sc0|sc0|Mux0~20_combout\) # ((\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc0|Mux0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc0|Mux0~20_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc0|Mux0~32_combout\,
	combout => \sc0|sc0|Mux0~33_combout\);

-- Location: LCCOMB_X75_Y37_N14
\sc0|sc1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~2_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(4)) # ((\sc0|sc2|Bloque_5|qp\(2) & \sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(2) & ((!\sc0|sc2|Bloque_5|qp\(4)) # 
-- (!\sc0|sc2|Bloque_5|qp\(1)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(4),
	combout => \sc0|sc1|Mux7~2_combout\);

-- Location: LCCOMB_X75_Y37_N24
\sc0|sc1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((!\sc0|sc2|Bloque_5|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & ((!\sc0|sc2|Bloque_5|qp\(4)) # (!\sc0|sc2|Bloque_5|qp\(2)))) # (!\sc0|sc2|Bloque_5|qp\(1) & 
-- ((\sc0|sc2|Bloque_5|qp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(4),
	combout => \sc0|sc1|Mux7~1_combout\);

-- Location: LCCOMB_X75_Y37_N4
\sc0|sc1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~3_combout\ = (\sc0|sc2|Bloque_5|qp\(5) & (\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(3) & ((!\sc0|sc1|Mux7~1_combout\))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc1|Mux7~2_combout\,
	datad => \sc0|sc1|Mux7~1_combout\,
	combout => \sc0|sc1|Mux7~3_combout\);

-- Location: LCCOMB_X75_Y37_N26
\sc0|sc1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~0_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc2|Bloque_5|qp\(4)) # (!\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(1)) # ((\sc0|sc2|Bloque_5|qp\(0) & 
-- \sc0|sc2|Bloque_5|qp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(4),
	combout => \sc0|sc1|Mux7~0_combout\);

-- Location: LCCOMB_X75_Y37_N22
\sc0|sc1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~4_combout\ = (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(4),
	combout => \sc0|sc1|Mux7~4_combout\);

-- Location: LCCOMB_X75_Y37_N16
\sc0|sc1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux7~5_combout\ = (\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc1|Mux7~3_combout\ & ((\sc0|sc1|Mux7~4_combout\))) # (!\sc0|sc1|Mux7~3_combout\ & (!\sc0|sc1|Mux7~0_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(5) & (\sc0|sc1|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc1|Mux7~3_combout\,
	datac => \sc0|sc1|Mux7~0_combout\,
	datad => \sc0|sc1|Mux7~4_combout\,
	combout => \sc0|sc1|Mux7~5_combout\);

-- Location: LCCOMB_X75_Y37_N28
\sc0|sc1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux6~3_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1) & !\sc0|sc2|Bloque_5|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(2) & 
-- (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(0)) # (!\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux6~3_combout\);

-- Location: LCCOMB_X75_Y37_N12
\sc0|sc1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux6~1_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(3) & ((!\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|qp\(3) $ 
-- (((\sc0|sc2|Bloque_5|qp\(1) & \sc0|sc2|Bloque_5|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux6~1_combout\);

-- Location: LCCOMB_X75_Y37_N18
\sc0|sc1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux6~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(2) $ (\sc0|sc2|Bloque_5|qp\(3) $ (!\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # 
-- (!\sc0|sc2|Bloque_5|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(3) & \sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(3),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y37_N10
\sc0|sc1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux6~2_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc1|Mux6~0_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc1|Mux6~1_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc1|Mux6~0_combout\,
	combout => \sc0|sc1|Mux6~2_combout\);

-- Location: LCCOMB_X75_Y37_N30
\sc0|sc1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux6~4_combout\ = (\sc0|sc1|Mux6~2_combout\) # ((!\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc1|Mux6~3_combout\ & \sc0|sc2|Bloque_5|qp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc1|Mux6~3_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc1|Mux6~2_combout\,
	combout => \sc0|sc1|Mux6~4_combout\);

-- Location: LCCOMB_X74_Y37_N26
\sc0|sc1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux5~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(2) $ (((!\sc0|sc2|Bloque_5|qp\(0)) # (!\sc0|sc2|Bloque_5|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3) & ((!\sc0|sc2|Bloque_5|qp\(2)) # 
-- (!\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y37_N20
\sc0|sc1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux5~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(2) $ (((\sc0|sc2|Bloque_5|qp\(1) & \sc0|sc2|Bloque_5|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # 
-- (!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux5~1_combout\);

-- Location: LCCOMB_X74_Y37_N28
\sc0|sc1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux5~3_combout\ = (\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc1|Mux5~0_combout\ & !\sc0|sc1|Mux5~1_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc1|Mux5~1_combout\ & (\sc0|sc2|Bloque_5|qp\(0) $ 
-- (\sc0|sc1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc1|Mux5~0_combout\,
	datad => \sc0|sc1|Mux5~1_combout\,
	combout => \sc0|sc1|Mux5~3_combout\);

-- Location: LCCOMB_X74_Y37_N6
\sc0|sc1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux5~2_combout\ = (\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc1|Mux5~1_combout\) # (!\sc0|sc1|Mux5~0_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc1|Mux5~0_combout\ $ (\sc0|sc1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc1|Mux5~0_combout\,
	datad => \sc0|sc1|Mux5~1_combout\,
	combout => \sc0|sc1|Mux5~2_combout\);

-- Location: LCCOMB_X74_Y37_N2
\sc0|sc1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux5~4_combout\ = \sc0|sc1|Mux5~3_combout\ $ (((\sc0|sc2|Bloque_5|qp\(5) & !\sc0|sc1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc1|Mux5~3_combout\,
	datad => \sc0|sc1|Mux5~2_combout\,
	combout => \sc0|sc1|Mux5~4_combout\);

-- Location: LCCOMB_X75_Y38_N18
\sc0|sc1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~0_combout\ = (\sc0|sc2|Bloque_5|qp\(4)) # ((\sc0|sc2|Bloque_5|qp\(3) & ((!\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y38_N22
\sc0|sc1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~4_combout\ = (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3) & \sc0|sc2|Bloque_5|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3) & !\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux4~4_combout\);

-- Location: LCCOMB_X75_Y38_N14
\sc0|sc1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~2_combout\ = (\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc2|Bloque_5|qp\(1) & ((!\sc0|sc2|Bloque_5|qp\(0)) # (!\sc0|sc2|Bloque_5|qp\(3)))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3)) # (\sc0|sc2|Bloque_5|qp\(0)))))) # 
-- (!\sc0|sc2|Bloque_5|qp\(4) & (((\sc0|sc2|Bloque_5|qp\(3) & \sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux4~2_combout\);

-- Location: LCCOMB_X75_Y38_N16
\sc0|sc1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(4) $ ((!\sc0|sc2|Bloque_5|qp\(3))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc2|Bloque_5|qp\(3) & !\sc0|sc2|Bloque_5|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux4~1_combout\);

-- Location: LCCOMB_X75_Y38_N20
\sc0|sc1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~3_combout\ = (\sc0|sc2|Bloque_5|qp\(5) & (((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc1|Mux4~1_combout\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc1|Mux4~2_combout\,
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc1|Mux4~1_combout\,
	combout => \sc0|sc1|Mux4~3_combout\);

-- Location: LCCOMB_X75_Y38_N0
\sc0|sc1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux4~5_combout\ = (\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc1|Mux4~3_combout\ & ((\sc0|sc1|Mux4~4_combout\))) # (!\sc0|sc1|Mux4~3_combout\ & (!\sc0|sc1|Mux4~0_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(5) & (((\sc0|sc1|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc1|Mux4~0_combout\,
	datac => \sc0|sc1|Mux4~4_combout\,
	datad => \sc0|sc1|Mux4~3_combout\,
	combout => \sc0|sc1|Mux4~5_combout\);

-- Location: LCCOMB_X74_Y37_N22
\sc0|sc1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux3~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(3) $ (\sc0|sc2|Bloque_5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(2) & ((!\sc0|sc2|Bloque_5|qp\(0)))) # 
-- (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|qp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux3~1_combout\);

-- Location: LCCOMB_X74_Y37_N4
\sc0|sc1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux3~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(2) & ((!\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y37_N8
\sc0|sc1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux3~2_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc1|Mux3~1_combout\)) # (!\sc0|sc2|Bloque_5|qp\(4) & ((\sc0|sc1|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc1|Mux3~1_combout\,
	datad => \sc0|sc1|Mux3~0_combout\,
	combout => \sc0|sc1|Mux3~2_combout\);

-- Location: LCCOMB_X74_Y37_N18
\sc0|sc1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux3~3_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(3) & ((!\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(1) $ (\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux3~3_combout\);

-- Location: LCCOMB_X74_Y37_N24
\sc0|sc1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux3~4_combout\ = (\sc0|sc1|Mux3~2_combout\) # ((!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc1|Mux3~2_combout\,
	datad => \sc0|sc1|Mux3~3_combout\,
	combout => \sc0|sc1|Mux3~4_combout\);

-- Location: LCCOMB_X74_Y37_N14
\sc0|sc1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux2~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1) $ (((!\sc0|sc2|Bloque_5|qp\(0) & \sc0|sc2|Bloque_5|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y37_N0
\sc0|sc1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux2~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(1) $ (!\sc0|sc2|Bloque_5|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(2)))) # (!\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux2~1_combout\);

-- Location: LCCOMB_X74_Y37_N30
\sc0|sc1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux2~2_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & ((!\sc0|sc1|Mux2~1_combout\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc1|Mux2~0_combout\,
	datad => \sc0|sc1|Mux2~1_combout\,
	combout => \sc0|sc1|Mux2~2_combout\);

-- Location: LCCOMB_X74_Y37_N16
\sc0|sc1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux2~3_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|qp\(3) $ (\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(2),
	combout => \sc0|sc1|Mux2~3_combout\);

-- Location: LCCOMB_X74_Y37_N10
\sc0|sc1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux2~4_combout\ = (\sc0|sc1|Mux2~2_combout\) # ((!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc2|Bloque_5|qp\(5) & \sc0|sc1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(4),
	datab => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc1|Mux2~2_combout\,
	datad => \sc0|sc1|Mux2~3_combout\,
	combout => \sc0|sc1|Mux2~4_combout\);

-- Location: LCCOMB_X75_Y38_N8
\sc0|sc1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux1~1_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(0)) # (\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(2) $ (\sc0|sc2|Bloque_5|qp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc1|Mux1~1_combout\);

-- Location: LCCOMB_X75_Y38_N6
\sc0|sc1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux1~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(3) & ((\sc0|sc2|Bloque_5|qp\(2))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc2|Bloque_5|qp\(3) $ (!\sc0|sc2|Bloque_5|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc1|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y38_N26
\sc0|sc1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux1~2_combout\ = (\sc0|sc2|Bloque_5|qp\(5) & (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc1|Mux1~1_combout\ $ (\sc0|sc1|Mux1~0_combout\)))) # (!\sc0|sc2|Bloque_5|qp\(5) & ((\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc1|Mux1~1_combout\)) # 
-- (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc1|Mux1~1_combout\ & \sc0|sc1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc1|Mux1~1_combout\,
	datad => \sc0|sc1|Mux1~0_combout\,
	combout => \sc0|sc1|Mux1~2_combout\);

-- Location: LCCOMB_X75_Y38_N24
\sc0|sc1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux0~1_combout\ = (\sc0|sc1|Mux0~0_combout\ & (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc2|Bloque_5|qp\(5) & !\sc0|sc2|Bloque_5|qp\(0)))) # (!\sc0|sc1|Mux0~0_combout\ & (\sc0|sc2|Bloque_5|qp\(4) & (!\sc0|sc2|Bloque_5|qp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc1|Mux0~0_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux0~1_combout\);

-- Location: DSPMULT_X71_Y39_N0
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y39_N2
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y39_N12
\sc0|sc2|Bloque_2|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[0]~0_combout\ = (\sc0|sc2|Bloque_3|qp\(0) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\sc0|sc2|Bloque_3|qp\(0) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \sc0|sc2|Bloque_2|S[0]~1\ = CARRY((\sc0|sc2|Bloque_3|qp\(0) & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(0),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \sc0|sc2|Bloque_2|S[0]~0_combout\,
	cout => \sc0|sc2|Bloque_2|S[0]~1\);

-- Location: LCCOMB_X73_Y38_N14
\sc0|sc2|Bloque_3|qn[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[0]~62_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|S[0]~0_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|S[0]~0_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[0]~62_combout\);

-- Location: FF_X73_Y38_N15
\sc0|sc2|Bloque_3|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[0]~62_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(0));

-- Location: LCCOMB_X72_Y39_N14
\sc0|sc2|Bloque_2|S[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[1]~2_combout\ = (\sc0|sc2|Bloque_3|qp\(1) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\sc0|sc2|Bloque_2|S[0]~1\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ & 
-- (!\sc0|sc2|Bloque_2|S[0]~1\)))) # (!\sc0|sc2|Bloque_3|qp\(1) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\sc0|sc2|Bloque_2|S[0]~1\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\sc0|sc2|Bloque_2|S[0]~1\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|S[1]~3\ = CARRY((\sc0|sc2|Bloque_3|qp\(1) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\sc0|sc2|Bloque_2|S[0]~1\)) # (!\sc0|sc2|Bloque_3|qp\(1) & ((!\sc0|sc2|Bloque_2|S[0]~1\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(1),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[0]~1\,
	combout => \sc0|sc2|Bloque_2|S[1]~2_combout\,
	cout => \sc0|sc2|Bloque_2|S[1]~3\);

-- Location: LCCOMB_X73_Y38_N0
\sc0|sc2|Bloque_3|qn[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[1]~61_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|S[1]~2_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|S[1]~2_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[1]~61_combout\);

-- Location: FF_X73_Y38_N1
\sc0|sc2|Bloque_3|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[1]~61_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(1));

-- Location: LCCOMB_X72_Y39_N16
\sc0|sc2|Bloque_2|S[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[2]~4_combout\ = ((\sc0|sc2|Bloque_3|qp\(2) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (!\sc0|sc2|Bloque_2|S[1]~3\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[2]~5\ = CARRY((\sc0|sc2|Bloque_3|qp\(2) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\sc0|sc2|Bloque_2|S[1]~3\))) # (!\sc0|sc2|Bloque_3|qp\(2) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ & 
-- !\sc0|sc2|Bloque_2|S[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(2),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[1]~3\,
	combout => \sc0|sc2|Bloque_2|S[2]~4_combout\,
	cout => \sc0|sc2|Bloque_2|S[2]~5\);

-- Location: LCCOMB_X69_Y39_N18
\sc0|sc2|Bloque_3|qn[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[2]~60_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|S[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|S[2]~4_combout\,
	combout => \sc0|sc2|Bloque_3|qn[2]~60_combout\);

-- Location: FF_X69_Y39_N19
\sc0|sc2|Bloque_3|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[2]~60_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(2));

-- Location: LCCOMB_X72_Y39_N18
\sc0|sc2|Bloque_2|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[3]~6_combout\ = (\sc0|sc2|Bloque_3|qp\(3) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\sc0|sc2|Bloque_2|S[2]~5\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\sc0|sc2|Bloque_2|S[2]~5\)))) # (!\sc0|sc2|Bloque_3|qp\(3) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\sc0|sc2|Bloque_2|S[2]~5\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\sc0|sc2|Bloque_2|S[2]~5\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|S[3]~7\ = CARRY((\sc0|sc2|Bloque_3|qp\(3) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\sc0|sc2|Bloque_2|S[2]~5\)) # (!\sc0|sc2|Bloque_3|qp\(3) & ((!\sc0|sc2|Bloque_2|S[2]~5\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(3),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[2]~5\,
	combout => \sc0|sc2|Bloque_2|S[3]~6_combout\,
	cout => \sc0|sc2|Bloque_2|S[3]~7\);

-- Location: LCCOMB_X69_Y39_N24
\sc0|sc2|Bloque_3|qn[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[3]~59_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|S[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|S[3]~6_combout\,
	combout => \sc0|sc2|Bloque_3|qn[3]~59_combout\);

-- Location: FF_X69_Y39_N25
\sc0|sc2|Bloque_3|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[3]~59_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(3));

-- Location: LCCOMB_X72_Y39_N20
\sc0|sc2|Bloque_2|S[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[4]~8_combout\ = ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\sc0|sc2|Bloque_3|qp\(4) $ (!\sc0|sc2|Bloque_2|S[3]~7\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[4]~9\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\sc0|sc2|Bloque_3|qp\(4)) # (!\sc0|sc2|Bloque_2|S[3]~7\))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\sc0|sc2|Bloque_3|qp\(4) & 
-- !\sc0|sc2|Bloque_2|S[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \sc0|sc2|Bloque_3|qp\(4),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[3]~7\,
	combout => \sc0|sc2|Bloque_2|S[4]~8_combout\,
	cout => \sc0|sc2|Bloque_2|S[4]~9\);

-- Location: LCCOMB_X72_Y39_N0
\sc0|sc2|Bloque_3|qn[4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[4]~58_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[4]~8_combout\,
	combout => \sc0|sc2|Bloque_3|qn[4]~58_combout\);

-- Location: FF_X72_Y39_N1
\sc0|sc2|Bloque_3|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[4]~58_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(4));

-- Location: LCCOMB_X72_Y39_N22
\sc0|sc2|Bloque_2|S[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[5]~10_combout\ = (\sc0|sc2|Bloque_3|qp\(5) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\sc0|sc2|Bloque_2|S[4]~9\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\sc0|sc2|Bloque_2|S[4]~9\)))) # (!\sc0|sc2|Bloque_3|qp\(5) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\sc0|sc2|Bloque_2|S[4]~9\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\sc0|sc2|Bloque_2|S[4]~9\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|S[5]~11\ = CARRY((\sc0|sc2|Bloque_3|qp\(5) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\sc0|sc2|Bloque_2|S[4]~9\)) # (!\sc0|sc2|Bloque_3|qp\(5) & ((!\sc0|sc2|Bloque_2|S[4]~9\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(5),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[4]~9\,
	combout => \sc0|sc2|Bloque_2|S[5]~10_combout\,
	cout => \sc0|sc2|Bloque_2|S[5]~11\);

-- Location: LCCOMB_X72_Y39_N6
\sc0|sc2|Bloque_3|qn[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[5]~57_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[5]~10_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[5]~10_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[5]~57_combout\);

-- Location: FF_X72_Y39_N7
\sc0|sc2|Bloque_3|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[5]~57_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(5));

-- Location: LCCOMB_X72_Y39_N24
\sc0|sc2|Bloque_2|S[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[6]~12_combout\ = ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\sc0|sc2|Bloque_3|qp\(6) $ (!\sc0|sc2|Bloque_2|S[5]~11\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[6]~13\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\sc0|sc2|Bloque_3|qp\(6)) # (!\sc0|sc2|Bloque_2|S[5]~11\))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\sc0|sc2|Bloque_3|qp\(6) & 
-- !\sc0|sc2|Bloque_2|S[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \sc0|sc2|Bloque_3|qp\(6),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[5]~11\,
	combout => \sc0|sc2|Bloque_2|S[6]~12_combout\,
	cout => \sc0|sc2|Bloque_2|S[6]~13\);

-- Location: LCCOMB_X72_Y39_N10
\sc0|sc2|Bloque_3|qn[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[6]~56_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[6]~12_combout\,
	combout => \sc0|sc2|Bloque_3|qn[6]~56_combout\);

-- Location: FF_X72_Y39_N11
\sc0|sc2|Bloque_3|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[6]~56_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(6));

-- Location: LCCOMB_X72_Y39_N26
\sc0|sc2|Bloque_2|S[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[7]~14_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\sc0|sc2|Bloque_3|qp\(7) & (\sc0|sc2|Bloque_2|S[6]~13\ & VCC)) # (!\sc0|sc2|Bloque_3|qp\(7) & (!\sc0|sc2|Bloque_2|S[6]~13\)))) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\sc0|sc2|Bloque_3|qp\(7) & (!\sc0|sc2|Bloque_2|S[6]~13\)) # (!\sc0|sc2|Bloque_3|qp\(7) & ((\sc0|sc2|Bloque_2|S[6]~13\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[7]~15\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\sc0|sc2|Bloque_3|qp\(7) & !\sc0|sc2|Bloque_2|S[6]~13\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\sc0|sc2|Bloque_2|S[6]~13\) # 
-- (!\sc0|sc2|Bloque_3|qp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \sc0|sc2|Bloque_3|qp\(7),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[6]~13\,
	combout => \sc0|sc2|Bloque_2|S[7]~14_combout\,
	cout => \sc0|sc2|Bloque_2|S[7]~15\);

-- Location: LCCOMB_X72_Y39_N4
\sc0|sc2|Bloque_3|qn[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[7]~55_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[7]~14_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[7]~14_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[7]~55_combout\);

-- Location: FF_X72_Y39_N5
\sc0|sc2|Bloque_3|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[7]~55_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(7));

-- Location: LCCOMB_X72_Y39_N28
\sc0|sc2|Bloque_2|S[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[8]~16_combout\ = ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (\sc0|sc2|Bloque_3|qp\(8) $ (!\sc0|sc2|Bloque_2|S[7]~15\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[8]~17\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\sc0|sc2|Bloque_3|qp\(8)) # (!\sc0|sc2|Bloque_2|S[7]~15\))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\sc0|sc2|Bloque_3|qp\(8) & 
-- !\sc0|sc2|Bloque_2|S[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \sc0|sc2|Bloque_3|qp\(8),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[7]~15\,
	combout => \sc0|sc2|Bloque_2|S[8]~16_combout\,
	cout => \sc0|sc2|Bloque_2|S[8]~17\);

-- Location: LCCOMB_X72_Y39_N2
\sc0|sc2|Bloque_3|qn[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[8]~54_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[8]~16_combout\,
	combout => \sc0|sc2|Bloque_3|qn[8]~54_combout\);

-- Location: FF_X72_Y39_N3
\sc0|sc2|Bloque_3|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[8]~54_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(8));

-- Location: LCCOMB_X72_Y39_N30
\sc0|sc2|Bloque_2|S[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[9]~18_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\sc0|sc2|Bloque_3|qp\(9) & (\sc0|sc2|Bloque_2|S[8]~17\ & VCC)) # (!\sc0|sc2|Bloque_3|qp\(9) & (!\sc0|sc2|Bloque_2|S[8]~17\)))) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\sc0|sc2|Bloque_3|qp\(9) & (!\sc0|sc2|Bloque_2|S[8]~17\)) # (!\sc0|sc2|Bloque_3|qp\(9) & ((\sc0|sc2|Bloque_2|S[8]~17\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[9]~19\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\sc0|sc2|Bloque_3|qp\(9) & !\sc0|sc2|Bloque_2|S[8]~17\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\sc0|sc2|Bloque_2|S[8]~17\) # 
-- (!\sc0|sc2|Bloque_3|qp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \sc0|sc2|Bloque_3|qp\(9),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[8]~17\,
	combout => \sc0|sc2|Bloque_2|S[9]~18_combout\,
	cout => \sc0|sc2|Bloque_2|S[9]~19\);

-- Location: LCCOMB_X72_Y39_N8
\sc0|sc2|Bloque_3|qn[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[9]~53_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[9]~18_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[9]~18_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[9]~53_combout\);

-- Location: FF_X72_Y39_N9
\sc0|sc2|Bloque_3|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[9]~53_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(9));

-- Location: LCCOMB_X72_Y38_N0
\sc0|sc2|Bloque_2|S[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[10]~20_combout\ = ((\sc0|sc2|Bloque_3|qp\(10) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (!\sc0|sc2|Bloque_2|S[9]~19\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[10]~21\ = CARRY((\sc0|sc2|Bloque_3|qp\(10) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\sc0|sc2|Bloque_2|S[9]~19\))) # (!\sc0|sc2|Bloque_3|qp\(10) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- !\sc0|sc2|Bloque_2|S[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(10),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[9]~19\,
	combout => \sc0|sc2|Bloque_2|S[10]~20_combout\,
	cout => \sc0|sc2|Bloque_2|S[10]~21\);

-- Location: LCCOMB_X72_Y38_N30
\sc0|sc2|Bloque_3|qn[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[10]~52_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[10]~20_combout\,
	combout => \sc0|sc2|Bloque_3|qn[10]~52_combout\);

-- Location: FF_X72_Y38_N31
\sc0|sc2|Bloque_3|qp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[10]~52_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(10));

-- Location: LCCOMB_X72_Y38_N2
\sc0|sc2|Bloque_2|S[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[11]~22_combout\ = (\sc0|sc2|Bloque_3|qp\(11) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\sc0|sc2|Bloque_2|S[10]~21\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\sc0|sc2|Bloque_2|S[10]~21\)))) # (!\sc0|sc2|Bloque_3|qp\(11) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\sc0|sc2|Bloque_2|S[10]~21\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\sc0|sc2|Bloque_2|S[10]~21\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[11]~23\ = CARRY((\sc0|sc2|Bloque_3|qp\(11) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & !\sc0|sc2|Bloque_2|S[10]~21\)) # (!\sc0|sc2|Bloque_3|qp\(11) & ((!\sc0|sc2|Bloque_2|S[10]~21\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(11),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[10]~21\,
	combout => \sc0|sc2|Bloque_2|S[11]~22_combout\,
	cout => \sc0|sc2|Bloque_2|S[11]~23\);

-- Location: LCCOMB_X72_Y38_N28
\sc0|sc2|Bloque_3|qn[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[11]~51_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[11]~22_combout\,
	combout => \sc0|sc2|Bloque_3|qn[11]~51_combout\);

-- Location: FF_X72_Y38_N29
\sc0|sc2|Bloque_3|qp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[11]~51_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(11));

-- Location: LCCOMB_X72_Y38_N4
\sc0|sc2|Bloque_2|S[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[12]~24_combout\ = ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\sc0|sc2|Bloque_3|qp\(12) $ (!\sc0|sc2|Bloque_2|S[11]~23\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[12]~25\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\sc0|sc2|Bloque_3|qp\(12)) # (!\sc0|sc2|Bloque_2|S[11]~23\))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\sc0|sc2|Bloque_3|qp\(12) & 
-- !\sc0|sc2|Bloque_2|S[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \sc0|sc2|Bloque_3|qp\(12),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[11]~23\,
	combout => \sc0|sc2|Bloque_2|S[12]~24_combout\,
	cout => \sc0|sc2|Bloque_2|S[12]~25\);

-- Location: LCCOMB_X73_Y38_N18
\sc0|sc2|Bloque_3|qn[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[12]~50_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[12]~24_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[12]~24_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[12]~50_combout\);

-- Location: FF_X73_Y38_N19
\sc0|sc2|Bloque_3|qp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[12]~50_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(12));

-- Location: LCCOMB_X72_Y38_N6
\sc0|sc2|Bloque_2|S[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[13]~26_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\sc0|sc2|Bloque_3|qp\(13) & (\sc0|sc2|Bloque_2|S[12]~25\ & VCC)) # (!\sc0|sc2|Bloque_3|qp\(13) & (!\sc0|sc2|Bloque_2|S[12]~25\)))) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\sc0|sc2|Bloque_3|qp\(13) & (!\sc0|sc2|Bloque_2|S[12]~25\)) # (!\sc0|sc2|Bloque_3|qp\(13) & ((\sc0|sc2|Bloque_2|S[12]~25\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[13]~27\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\sc0|sc2|Bloque_3|qp\(13) & !\sc0|sc2|Bloque_2|S[12]~25\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((!\sc0|sc2|Bloque_2|S[12]~25\) 
-- # (!\sc0|sc2|Bloque_3|qp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \sc0|sc2|Bloque_3|qp\(13),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[12]~25\,
	combout => \sc0|sc2|Bloque_2|S[13]~26_combout\,
	cout => \sc0|sc2|Bloque_2|S[13]~27\);

-- Location: LCCOMB_X73_Y38_N4
\sc0|sc2|Bloque_3|qn[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[13]~49_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[13]~26_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[13]~26_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[13]~49_combout\);

-- Location: FF_X73_Y38_N5
\sc0|sc2|Bloque_3|qp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[13]~49_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(13));

-- Location: LCCOMB_X72_Y38_N8
\sc0|sc2|Bloque_2|S[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[14]~28_combout\ = ((\sc0|sc2|Bloque_3|qp\(14) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (!\sc0|sc2|Bloque_2|S[13]~27\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[14]~29\ = CARRY((\sc0|sc2|Bloque_3|qp\(14) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\sc0|sc2|Bloque_2|S[13]~27\))) # (!\sc0|sc2|Bloque_3|qp\(14) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- !\sc0|sc2|Bloque_2|S[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(14),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[13]~27\,
	combout => \sc0|sc2|Bloque_2|S[14]~28_combout\,
	cout => \sc0|sc2|Bloque_2|S[14]~29\);

-- Location: LCCOMB_X72_Y38_N22
\sc0|sc2|Bloque_3|qn[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[14]~48_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[14]~28_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[14]~28_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[14]~48_combout\);

-- Location: FF_X72_Y38_N23
\sc0|sc2|Bloque_3|qp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[14]~48_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(14));

-- Location: LCCOMB_X72_Y38_N10
\sc0|sc2|Bloque_2|S[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[15]~30_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\sc0|sc2|Bloque_3|qp\(15) & (\sc0|sc2|Bloque_2|S[14]~29\ & VCC)) # (!\sc0|sc2|Bloque_3|qp\(15) & (!\sc0|sc2|Bloque_2|S[14]~29\)))) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\sc0|sc2|Bloque_3|qp\(15) & (!\sc0|sc2|Bloque_2|S[14]~29\)) # (!\sc0|sc2|Bloque_3|qp\(15) & ((\sc0|sc2|Bloque_2|S[14]~29\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[15]~31\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\sc0|sc2|Bloque_3|qp\(15) & !\sc0|sc2|Bloque_2|S[14]~29\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((!\sc0|sc2|Bloque_2|S[14]~29\) 
-- # (!\sc0|sc2|Bloque_3|qp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \sc0|sc2|Bloque_3|qp\(15),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[14]~29\,
	combout => \sc0|sc2|Bloque_2|S[15]~30_combout\,
	cout => \sc0|sc2|Bloque_2|S[15]~31\);

-- Location: LCCOMB_X72_Y38_N24
\sc0|sc2|Bloque_3|qn[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[15]~47_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[15]~30_combout\,
	combout => \sc0|sc2|Bloque_3|qn[15]~47_combout\);

-- Location: FF_X72_Y38_N25
\sc0|sc2|Bloque_3|qp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[15]~47_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(15));

-- Location: LCCOMB_X72_Y38_N12
\sc0|sc2|Bloque_2|S[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[16]~32_combout\ = ((\sc0|sc2|Bloque_3|qp\(16) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\sc0|sc2|Bloque_2|S[15]~31\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[16]~33\ = CARRY((\sc0|sc2|Bloque_3|qp\(16) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\sc0|sc2|Bloque_2|S[15]~31\))) # (!\sc0|sc2|Bloque_3|qp\(16) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- !\sc0|sc2|Bloque_2|S[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(16),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[15]~31\,
	combout => \sc0|sc2|Bloque_2|S[16]~32_combout\,
	cout => \sc0|sc2|Bloque_2|S[16]~33\);

-- Location: LCCOMB_X72_Y38_N26
\sc0|sc2|Bloque_3|qn[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[16]~46_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[16]~32_combout\,
	combout => \sc0|sc2|Bloque_3|qn[16]~46_combout\);

-- Location: FF_X72_Y38_N27
\sc0|sc2|Bloque_3|qp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[16]~46_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(16));

-- Location: LCCOMB_X72_Y38_N14
\sc0|sc2|Bloque_2|S[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[17]~34_combout\ = (\sc0|sc2|Bloque_3|qp\(17) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\sc0|sc2|Bloque_2|S[16]~33\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\sc0|sc2|Bloque_2|S[16]~33\)))) # (!\sc0|sc2|Bloque_3|qp\(17) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\sc0|sc2|Bloque_2|S[16]~33\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\sc0|sc2|Bloque_2|S[16]~33\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[17]~35\ = CARRY((\sc0|sc2|Bloque_3|qp\(17) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\sc0|sc2|Bloque_2|S[16]~33\)) # (!\sc0|sc2|Bloque_3|qp\(17) & ((!\sc0|sc2|Bloque_2|S[16]~33\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(17),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[16]~33\,
	combout => \sc0|sc2|Bloque_2|S[17]~34_combout\,
	cout => \sc0|sc2|Bloque_2|S[17]~35\);

-- Location: LCCOMB_X73_Y38_N6
\sc0|sc2|Bloque_3|qn[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[17]~45_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[17]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[17]~34_combout\,
	combout => \sc0|sc2|Bloque_3|qn[17]~45_combout\);

-- Location: FF_X73_Y38_N7
\sc0|sc2|Bloque_3|qp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[17]~45_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(17));

-- Location: LCCOMB_X72_Y38_N16
\sc0|sc2|Bloque_2|S[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[18]~36_combout\ = ((\sc0|sc2|Bloque_3|qp\(18) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (!\sc0|sc2|Bloque_2|S[17]~35\)))) # (GND)
-- \sc0|sc2|Bloque_2|S[18]~37\ = CARRY((\sc0|sc2|Bloque_3|qp\(18) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\sc0|sc2|Bloque_2|S[17]~35\))) # (!\sc0|sc2|Bloque_3|qp\(18) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- !\sc0|sc2|Bloque_2|S[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(18),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[17]~35\,
	combout => \sc0|sc2|Bloque_2|S[18]~36_combout\,
	cout => \sc0|sc2|Bloque_2|S[18]~37\);

-- Location: LCCOMB_X73_Y38_N20
\sc0|sc2|Bloque_3|qn[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[18]~44_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_2|S[18]~36_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|S[18]~36_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_3|qn[18]~44_combout\);

-- Location: FF_X73_Y38_N21
\sc0|sc2|Bloque_3|qp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[18]~44_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(18));

-- Location: LCCOMB_X72_Y38_N18
\sc0|sc2|Bloque_2|S[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[19]~38_combout\ = (\sc0|sc2|Bloque_3|qp\(19) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\sc0|sc2|Bloque_2|S[18]~37\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\sc0|sc2|Bloque_2|S[18]~37\)))) # (!\sc0|sc2|Bloque_3|qp\(19) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\sc0|sc2|Bloque_2|S[18]~37\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\sc0|sc2|Bloque_2|S[18]~37\) # (GND)))))
-- \sc0|sc2|Bloque_2|S[19]~39\ = CARRY((\sc0|sc2|Bloque_3|qp\(19) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\sc0|sc2|Bloque_2|S[18]~37\)) # (!\sc0|sc2|Bloque_3|qp\(19) & ((!\sc0|sc2|Bloque_2|S[18]~37\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(19),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|S[18]~37\,
	combout => \sc0|sc2|Bloque_2|S[19]~38_combout\,
	cout => \sc0|sc2|Bloque_2|S[19]~39\);

-- Location: FF_X72_Y38_N19
\sc0|sc2|Bloque_4|qp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[19]~38_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(19));

-- Location: FF_X72_Y39_N31
\sc0|sc2|Bloque_4|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[9]~18_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(9));

-- Location: LCCOMB_X79_Y38_N30
\sc2|sc0|txBuffer[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer[0]~24_combout\ = !\sc2|sc0|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer[0]~24_combout\);

-- Location: LCCOMB_X79_Y36_N28
\sc2|sc0|receive_transmit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|receive_transmit~0_combout\ = (\sc2|sc0|receive_transmit~q\) # ((\sc4|qp\(1) & (\sc4|qp\(2) & !\sc4|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|qp\(2),
	datac => \sc2|sc0|receive_transmit~q\,
	datad => \sc4|qp\(0),
	combout => \sc2|sc0|receive_transmit~0_combout\);

-- Location: LCCOMB_X79_Y36_N8
\sc2|sc0|receive_transmit~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|receive_transmit~_wirecell_combout\ = !\sc2|sc0|receive_transmit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|receive_transmit~q\,
	combout => \sc2|sc0|receive_transmit~_wirecell_combout\);

-- Location: FF_X79_Y36_N29
\sc2|sc0|receive_transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|receive_transmit~0_combout\,
	asdata => \sc2|sc0|receive_transmit~_wirecell_combout\,
	sload => \sc2|sc0|state~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|receive_transmit~q\);

-- Location: LCCOMB_X80_Y36_N2
\sc2|sc0|last_bit[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~1_combout\ = (\sc2|sc0|last_bit\(0)) # ((\RST~input_o\ & \sc2|sc0|last_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \sc2|sc0|last_bit\(0),
	datad => \sc2|sc0|last_bit[0]~0_combout\,
	combout => \sc2|sc0|last_bit[0]~1_combout\);

-- Location: FF_X80_Y36_N3
\sc2|sc0|last_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|last_bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|last_bit\(0));

-- Location: LCCOMB_X79_Y36_N10
\sc2|sc0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~0_combout\ = (\sc2|sc0|receive_transmit~q\ & \sc2|sc0|last_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|receive_transmit~q\,
	datad => \sc2|sc0|last_bit\(0),
	combout => \sc2|sc0|process_0~0_combout\);

-- Location: LCCOMB_X79_Y34_N22
\sc2|sc0|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~1_combout\ = (((!\sc2|sc0|clk_toggles\(0)) # (!\sc2|sc0|clk_toggles\(2))) # (!\sc2|sc0|clk_toggles\(3))) # (!\sc2|sc0|clk_toggles\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(1),
	datab => \sc2|sc0|clk_toggles\(3),
	datac => \sc2|sc0|clk_toggles\(2),
	datad => \sc2|sc0|clk_toggles\(0),
	combout => \sc2|sc0|process_0~1_combout\);

-- Location: LCCOMB_X79_Y34_N24
\sc2|sc0|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~2_combout\ = (\sc2|sc0|process_0~0_combout\ & (((\sc2|sc0|process_0~1_combout\ & !\sc2|sc0|clk_toggles\(4))) # (!\sc2|sc0|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|process_0~0_combout\,
	datab => \sc2|sc0|clk_toggles\(5),
	datac => \sc2|sc0|process_0~1_combout\,
	datad => \sc2|sc0|clk_toggles\(4),
	combout => \sc2|sc0|process_0~2_combout\);

-- Location: LCCOMB_X80_Y34_N20
\sc2|sc0|txBuffer[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer[23]~1_combout\ = (\RST~input_o\ & ((\sc2|sc0|last_bit[0]~0_combout\) # ((\sc2|sc0|process_0~2_combout\ & \sc2|sc0|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \sc2|sc0|process_0~2_combout\,
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|last_bit[0]~0_combout\,
	combout => \sc2|sc0|txBuffer[23]~1_combout\);

-- Location: FF_X79_Y38_N31
\sc2|sc0|txBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer[0]~24_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(0));

-- Location: LCCOMB_X79_Y38_N8
\sc2|sc0|txBuffer~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~23_combout\ = (\sc2|sc0|txBuffer\(0)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(0),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~23_combout\);

-- Location: FF_X79_Y38_N9
\sc2|sc0|txBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~23_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(1));

-- Location: LCCOMB_X79_Y38_N22
\sc2|sc0|txBuffer~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~22_combout\ = (\sc2|sc0|txBuffer\(1)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(1),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~22_combout\);

-- Location: FF_X79_Y38_N23
\sc2|sc0|txBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~22_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(2));

-- Location: LCCOMB_X79_Y38_N4
\sc2|sc0|txBuffer~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~21_combout\ = (\sc2|sc0|txBuffer\(2)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(2),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~21_combout\);

-- Location: FF_X79_Y38_N5
\sc2|sc0|txBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~21_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(3));

-- Location: LCCOMB_X79_Y38_N10
\sc2|sc0|txBuffer~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~20_combout\ = (\sc2|sc0|state~q\ & ((\sc2|sc0|txBuffer\(3)))) # (!\sc2|sc0|state~q\ & (\sc0|sc2|Bloque_4|qp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_4|qp\(9),
	datac => \sc2|sc0|txBuffer\(3),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~20_combout\);

-- Location: FF_X79_Y38_N11
\sc2|sc0|txBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~20_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(4));

-- Location: FF_X72_Y38_N1
\sc0|sc2|Bloque_4|qp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[10]~20_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(10));

-- Location: LCCOMB_X79_Y38_N12
\sc2|sc0|txBuffer~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~19_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(4))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(4),
	datac => \sc0|sc2|Bloque_4|qp\(10),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~19_combout\);

-- Location: FF_X79_Y38_N13
\sc2|sc0|txBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~19_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(5));

-- Location: FF_X72_Y38_N3
\sc0|sc2|Bloque_4|qp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[11]~22_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(11));

-- Location: LCCOMB_X79_Y38_N6
\sc2|sc0|txBuffer~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~18_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(5))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(5),
	datac => \sc0|sc2|Bloque_4|qp\(11),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~18_combout\);

-- Location: FF_X79_Y38_N7
\sc2|sc0|txBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~18_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(6));

-- Location: FF_X72_Y38_N5
\sc0|sc2|Bloque_4|qp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[12]~24_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(12));

-- Location: LCCOMB_X79_Y38_N24
\sc2|sc0|txBuffer~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~17_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(6))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(6),
	datac => \sc0|sc2|Bloque_4|qp\(12),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~17_combout\);

-- Location: FF_X79_Y38_N25
\sc2|sc0|txBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~17_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(7));

-- Location: FF_X72_Y38_N7
\sc0|sc2|Bloque_4|qp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[13]~26_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(13));

-- Location: LCCOMB_X79_Y38_N26
\sc2|sc0|txBuffer~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~16_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(7))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(7),
	datac => \sc0|sc2|Bloque_4|qp\(13),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~16_combout\);

-- Location: FF_X79_Y38_N27
\sc2|sc0|txBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~16_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(8));

-- Location: FF_X72_Y38_N9
\sc0|sc2|Bloque_4|qp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[14]~28_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(14));

-- Location: LCCOMB_X79_Y38_N0
\sc2|sc0|txBuffer~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~15_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(8))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(8),
	datac => \sc0|sc2|Bloque_4|qp\(14),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~15_combout\);

-- Location: FF_X79_Y38_N1
\sc2|sc0|txBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~15_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(9));

-- Location: FF_X72_Y38_N11
\sc0|sc2|Bloque_4|qp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[15]~30_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(15));

-- Location: LCCOMB_X79_Y38_N2
\sc2|sc0|txBuffer~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~14_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(9))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(9),
	datac => \sc0|sc2|Bloque_4|qp\(15),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~14_combout\);

-- Location: FF_X79_Y38_N3
\sc2|sc0|txBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~14_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(10));

-- Location: FF_X72_Y38_N13
\sc0|sc2|Bloque_4|qp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[16]~32_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(16));

-- Location: LCCOMB_X79_Y38_N16
\sc2|sc0|txBuffer~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~13_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(10))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(10),
	datac => \sc0|sc2|Bloque_4|qp\(16),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~13_combout\);

-- Location: FF_X79_Y38_N17
\sc2|sc0|txBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~13_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(11));

-- Location: FF_X72_Y38_N15
\sc0|sc2|Bloque_4|qp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[17]~34_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(17));

-- Location: LCCOMB_X79_Y38_N14
\sc2|sc0|txBuffer~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~12_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(11))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(11),
	datac => \sc0|sc2|Bloque_4|qp\(17),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~12_combout\);

-- Location: FF_X79_Y38_N15
\sc2|sc0|txBuffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~12_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(12));

-- Location: FF_X72_Y38_N17
\sc0|sc2|Bloque_4|qp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[18]~36_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(18));

-- Location: LCCOMB_X79_Y38_N20
\sc2|sc0|txBuffer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~11_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(12))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(12),
	datac => \sc0|sc2|Bloque_4|qp\(18),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~11_combout\);

-- Location: FF_X79_Y38_N21
\sc2|sc0|txBuffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~11_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(13));

-- Location: LCCOMB_X79_Y38_N18
\sc2|sc0|txBuffer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~10_combout\ = (\sc2|sc0|state~q\ & ((\sc2|sc0|txBuffer\(13)))) # (!\sc2|sc0|state~q\ & (\sc0|sc2|Bloque_4|qp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_4|qp\(19),
	datab => \sc2|sc0|txBuffer\(13),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~10_combout\);

-- Location: FF_X79_Y38_N19
\sc2|sc0|txBuffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~10_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(14));

-- Location: LCCOMB_X73_Y38_N24
\sc0|sc2|Bloque_3|qn[20]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[20]~42_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|S[20]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_2|S[20]~40_combout\,
	combout => \sc0|sc2|Bloque_3|qn[20]~42_combout\);

-- Location: FF_X73_Y38_N25
\sc0|sc2|Bloque_3|qp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[20]~42_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(20));

-- Location: LCCOMB_X72_Y38_N20
\sc0|sc2|Bloque_2|S[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|S[20]~40_combout\ = \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (\sc0|sc2|Bloque_2|S[19]~39\ $ (!\sc0|sc2|Bloque_3|qp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \sc0|sc2|Bloque_3|qp\(20),
	cin => \sc0|sc2|Bloque_2|S[19]~39\,
	combout => \sc0|sc2|Bloque_2|S[20]~40_combout\);

-- Location: FF_X72_Y38_N21
\sc0|sc2|Bloque_4|qp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|S[20]~40_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(20));

-- Location: LCCOMB_X79_Y38_N28
\sc2|sc0|txBuffer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~9_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(14))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(14),
	datac => \sc0|sc2|Bloque_4|qp\(20),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~9_combout\);

-- Location: FF_X79_Y38_N29
\sc2|sc0|txBuffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~9_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(15));

-- Location: LCCOMB_X80_Y34_N28
\sc2|sc0|txBuffer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~8_combout\ = (\sc2|sc0|txBuffer\(15) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(15),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~8_combout\);

-- Location: FF_X80_Y34_N29
\sc2|sc0|txBuffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~8_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(16));

-- Location: LCCOMB_X80_Y34_N18
\sc2|sc0|txBuffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~7_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|txBuffer\(16),
	combout => \sc2|sc0|txBuffer~7_combout\);

-- Location: FF_X80_Y34_N19
\sc2|sc0|txBuffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~7_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(17));

-- Location: LCCOMB_X80_Y34_N8
\sc2|sc0|txBuffer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~6_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|txBuffer\(17),
	combout => \sc2|sc0|txBuffer~6_combout\);

-- Location: FF_X80_Y34_N9
\sc2|sc0|txBuffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~6_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(18));

-- Location: LCCOMB_X80_Y34_N22
\sc2|sc0|txBuffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~5_combout\ = (\sc2|sc0|txBuffer\(18) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(18),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~5_combout\);

-- Location: FF_X80_Y34_N23
\sc2|sc0|txBuffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~5_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(19));

-- Location: LCCOMB_X80_Y34_N24
\sc2|sc0|txBuffer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~4_combout\ = (\sc2|sc0|txBuffer\(19)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(19),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~4_combout\);

-- Location: FF_X80_Y34_N25
\sc2|sc0|txBuffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~4_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(20));

-- Location: LCCOMB_X80_Y34_N6
\sc2|sc0|txBuffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~3_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|txBuffer\(20),
	combout => \sc2|sc0|txBuffer~3_combout\);

-- Location: FF_X80_Y34_N7
\sc2|sc0|txBuffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~3_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(21));

-- Location: LCCOMB_X80_Y34_N10
\sc2|sc0|txBuffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~2_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|txBuffer\(21),
	combout => \sc2|sc0|txBuffer~2_combout\);

-- Location: FF_X80_Y34_N11
\sc2|sc0|txBuffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~2_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(22));

-- Location: LCCOMB_X80_Y34_N16
\sc2|sc0|txBuffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~0_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|txBuffer\(22),
	combout => \sc2|sc0|txBuffer~0_combout\);

-- Location: FF_X80_Y34_N17
\sc2|sc0|txBuffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~0_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(23));

-- Location: LCCOMB_X80_Y34_N12
\sc2|sc0|mosi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|mosi~0_combout\ = (\sc2|sc0|Equal0~1_combout\) # ((\sc2|sc0|process_0~2_combout\ & (\sc2|sc0|txBuffer\(23))) # (!\sc2|sc0|process_0~2_combout\ & ((\sc2|sc0|mosi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(23),
	datab => \sc2|sc0|Equal0~1_combout\,
	datac => \sc2|sc0|mosi~q\,
	datad => \sc2|sc0|process_0~2_combout\,
	combout => \sc2|sc0|mosi~0_combout\);

-- Location: FF_X80_Y34_N13
\sc2|sc0|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|mosi~0_combout\,
	asdata => VCC,
	clrn => \RST~input_o\,
	sload => \sc2|sc0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|mosi~q\);
END structure;


