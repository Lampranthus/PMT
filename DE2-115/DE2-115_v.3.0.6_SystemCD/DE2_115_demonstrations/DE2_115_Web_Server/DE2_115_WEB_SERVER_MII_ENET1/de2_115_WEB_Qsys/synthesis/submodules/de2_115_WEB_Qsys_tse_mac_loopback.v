// #####################################################################################
// # Copyright (C) 1991-2008 Altera Corporation
// # Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
// # support information,  device programming or simulation file,  and any other
// # associated  documentation or information  provided by  Altera  or a partner
// # under  Altera's   Megafunction   Partnership   Program  may  be  used  only
// # to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
// # other  use  of such  megafunction  design,  netlist,  support  information,
// # device programming or simulation file,  or any other  related documentation
// # or information  is prohibited  for  any  other purpose,  including, but not
// # limited to  modification,  reverse engineering,  de-compiling, or use  with
// # any other  silicon devices,  unless such use is  explicitly  licensed under
// # a separate agreement with  Altera  or a megafunction partner.  Title to the
// # intellectual property,  including patents,  copyrights,  trademarks,  trade
// # secrets,  or maskworks,  embodied in any such megafunction design, netlist,
// # support  information,  device programming or simulation file,  or any other
// # related documentation or information provided by  Altera  or a megafunction
// # partner, remains with Altera, the megafunction partner, or their respective
// # licensors. No other licenses, including any licenses needed under any third
// # party's intellectual property, are provided herein.
// #####################################################################################

// #####################################################################################
// # Loopback module for SOPC system simulation with
// # Altera Triple Speed Ethernet (TSE) Megacore
// #
// # Generated at Fri Nov 16 13:56:13 2012 as a SOPC Builder component
// #
// #####################################################################################
// # This is a module used to provide external loopback on the TSE megacore by supplying
// # necessary clocks and default signal values on the network side interface 
// # (GMII/MII/TBI/Serial)
// #
// #   - by default this module generate clocks for operation in Gigabit mode that is
// #     of 8 ns clock period
// #   - no support for forcing collision detection and carrier sense in MII mode
// #     the mii_col and mii_crs signal always pulled to zero
// #   - you are recomment to set the the MAC operation mode using register access 
// #     rather than directly pulling the control signals
// #
// #####################################################################################
`timescale 1ns / 1ps

module de2_115_WEB_Qsys_tse_mac_loopback (

  rx_clk,
  tx_clk,
  m_tx_d,
  m_tx_en,
  m_tx_err,
  m_rx_d,
  m_rx_en,
  m_rx_err,
  m_rx_col,
  m_rx_crs,
  set_1000,
  set_10


);


  output rx_clk;
  output tx_clk;
  input [3:0] m_tx_d;
  input m_tx_en;
  input m_tx_err;
  output [3:0] m_rx_d;
  output m_rx_en;
  output m_rx_err;
  output m_rx_col;
  output m_rx_crs;
  output set_10;
  output set_1000;


  reg clk_tmp;
  initial
     clk_tmp <= 1'b0;
  always
     #4 clk_tmp <= ~clk_tmp;
  reg reconfig_clk_tmp;
  initial
     reconfig_clk_tmp <= 1'b0;
  always
     #20 reconfig_clk_tmp <= ~reconfig_clk_tmp;

  assign rx_clk = clk_tmp;
  assign tx_clk = clk_tmp;
  assign m_rx_d=m_tx_d;
  assign m_rx_en=m_tx_en;
  assign m_rx_err=m_tx_err;
  assign m_rx_col=0;
  assign m_rx_crs=0;
  assign set_1000=0;
  assign set_10=0;


endmodule
