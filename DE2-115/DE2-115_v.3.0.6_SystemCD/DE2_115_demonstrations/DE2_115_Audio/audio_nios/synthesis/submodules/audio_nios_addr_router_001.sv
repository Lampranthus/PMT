// (C) 2001-2013 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// (C) 2001-2013 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/13.0sp1/ip/merlin/altera_merlin_router/altera_merlin_router.sv.terp#1 $
// $Revision: #1 $
// $Date: 2013/03/07 $
// $Author: swbranch $

// -------------------------------------------------------
// Merlin Router
//
// Asserts the appropriate one-hot encoded channel based on 
// either (a) the address or (b) the dest id. The DECODER_TYPE
// parameter controls this behaviour. 0 means address decoder,
// 1 means dest id decoder.
//
// In the case of (a), it also sets the destination id.
// -------------------------------------------------------

`timescale 1 ns / 1 ns

module audio_nios_addr_router_001_default_decode
  #(
     parameter DEFAULT_CHANNEL = 5,
               DEFAULT_WR_CHANNEL = -1,
               DEFAULT_RD_CHANNEL = -1,
               DEFAULT_DESTID = 7 
   )
  (output [92 - 89 : 0] default_destination_id,
   output [9-1 : 0] default_wr_channel,
   output [9-1 : 0] default_rd_channel,
   output [9-1 : 0] default_src_channel
  );

  assign default_destination_id = 
    DEFAULT_DESTID[92 - 89 : 0];

  generate begin : default_decode
    if (DEFAULT_CHANNEL == -1) begin
      assign default_src_channel = '0;
    end
    else begin
      assign default_src_channel = 9'b1 << DEFAULT_CHANNEL;
    end
  end
  endgenerate

  generate begin : default_decode_rw
    if (DEFAULT_RD_CHANNEL == -1) begin
      assign default_wr_channel = '0;
      assign default_rd_channel = '0;
    end
    else begin
      assign default_wr_channel = 9'b1 << DEFAULT_WR_CHANNEL;
      assign default_rd_channel = 9'b1 << DEFAULT_RD_CHANNEL;
    end
  end
  endgenerate

endmodule


module audio_nios_addr_router_001
(
    // -------------------
    // Clock & Reset
    // -------------------
    input clk,
    input reset,

    // -------------------
    // Command Sink (Input)
    // -------------------
    input                       sink_valid,
    input  [103-1 : 0]    sink_data,
    input                       sink_startofpacket,
    input                       sink_endofpacket,
    output                      sink_ready,

    // -------------------
    // Command Source (Output)
    // -------------------
    output                          src_valid,
    output reg [103-1    : 0] src_data,
    output reg [9-1 : 0] src_channel,
    output                          src_startofpacket,
    output                          src_endofpacket,
    input                           src_ready
);

    // -------------------------------------------------------
    // Local parameters and variables
    // -------------------------------------------------------
    localparam PKT_ADDR_H = 63;
    localparam PKT_ADDR_L = 36;
    localparam PKT_DEST_ID_H = 92;
    localparam PKT_DEST_ID_L = 89;
    localparam PKT_PROTECTION_H = 96;
    localparam PKT_PROTECTION_L = 94;
    localparam ST_DATA_W = 103;
    localparam ST_CHANNEL_W = 9;
    localparam DECODER_TYPE = 0;

    localparam PKT_TRANS_WRITE = 66;
    localparam PKT_TRANS_READ  = 67;

    localparam PKT_ADDR_W = PKT_ADDR_H-PKT_ADDR_L + 1;
    localparam PKT_DEST_ID_W = PKT_DEST_ID_H-PKT_DEST_ID_L + 1;



    // -------------------------------------------------------
    // Figure out the number of bits to mask off for each slave span
    // during address decoding
    // -------------------------------------------------------
    localparam PAD0 = log2ceil(64'h8000000 - 64'h0); 
    localparam PAD1 = log2ceil(64'h8000200 - 64'h8000000); 
    localparam PAD2 = log2ceil(64'ha000000 - 64'h9800000); 
    localparam PAD3 = log2ceil(64'ha001000 - 64'ha000800); 
    localparam PAD4 = log2ceil(64'ha001020 - 64'ha001000); 
    localparam PAD5 = log2ceil(64'ha001030 - 64'ha001020); 
    localparam PAD6 = log2ceil(64'ha001040 - 64'ha001030); 
    localparam PAD7 = log2ceil(64'ha001048 - 64'ha001040); 
    localparam PAD8 = log2ceil(64'haa00000 - 64'ha800000); 
    // -------------------------------------------------------
    // Work out which address bits are significant based on the
    // address range of the slaves. If the required width is too
    // large or too small, we use the address field width instead.
    // -------------------------------------------------------
    localparam ADDR_RANGE = 64'haa00000;
    localparam RANGE_ADDR_WIDTH = log2ceil(ADDR_RANGE);
    localparam OPTIMIZED_ADDR_H = (RANGE_ADDR_WIDTH > PKT_ADDR_W) ||
                                  (RANGE_ADDR_WIDTH == 0) ?
                                        PKT_ADDR_H :
                                        PKT_ADDR_L + RANGE_ADDR_WIDTH - 1;

    localparam RG = RANGE_ADDR_WIDTH-1;

      wire [PKT_ADDR_W-1 : 0] address = sink_data[OPTIMIZED_ADDR_H : PKT_ADDR_L];

    // -------------------------------------------------------
    // Pass almost everything through, untouched
    // -------------------------------------------------------
    assign sink_ready        = src_ready;
    assign src_valid         = sink_valid;
    assign src_startofpacket = sink_startofpacket;
    assign src_endofpacket   = sink_endofpacket;

    wire [PKT_DEST_ID_W-1:0] default_destid;
    wire [9-1 : 0] default_src_channel;





    audio_nios_addr_router_001_default_decode the_default_decode(
      .default_destination_id (default_destid),
      .default_wr_channel   (),
      .default_rd_channel   (),
      .default_src_channel  (default_src_channel)
    );

    always @* begin
        src_data    = sink_data;
        src_channel = default_src_channel;
        src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = default_destid;

        // --------------------------------------------------
        // Address Decoder
        // Sets the channel and destination ID based on the address
        // --------------------------------------------------

    // ( 0x0 .. 0x8000000 )
    if ( {address[RG:PAD0],{PAD0{1'b0}}} == 28'h0   ) begin
            src_channel = 9'b000100000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 7;
    end

    // ( 0x8000000 .. 0x8000200 )
    if ( {address[RG:PAD1],{PAD1{1'b0}}} == 28'h8000000   ) begin
            src_channel = 9'b000001000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 5;
    end

    // ( 0x9800000 .. 0xa000000 )
    if ( {address[RG:PAD2],{PAD2{1'b0}}} == 28'h9800000   ) begin
            src_channel = 9'b000000010;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 3;
    end

    // ( 0xa000800 .. 0xa001000 )
    if ( {address[RG:PAD3],{PAD3{1'b0}}} == 28'ha000800   ) begin
            src_channel = 9'b000000001;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 4;
    end

    // ( 0xa001000 .. 0xa001020 )
    if ( {address[RG:PAD4],{PAD4{1'b0}}} == 28'ha001000   ) begin
            src_channel = 9'b001000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 2;
    end

    // ( 0xa001020 .. 0xa001030 )
    if ( {address[RG:PAD5],{PAD5{1'b0}}} == 28'ha001020   ) begin
            src_channel = 9'b010000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 0;
    end

    // ( 0xa001030 .. 0xa001040 )
    if ( {address[RG:PAD6],{PAD6{1'b0}}} == 28'ha001030   ) begin
            src_channel = 9'b100000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 1;
    end

    // ( 0xa001040 .. 0xa001048 )
    if ( {address[RG:PAD7],{PAD7{1'b0}}} == 28'ha001040   ) begin
            src_channel = 9'b000010000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 6;
    end

    // ( 0xa800000 .. 0xaa00000 )
    if ( {address[RG:PAD8],{PAD8{1'b0}}} == 28'ha800000   ) begin
            src_channel = 9'b000000100;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 8;
    end

end


    // --------------------------------------------------
    // Ceil(log2()) function
    // --------------------------------------------------
    function integer log2ceil;
        input reg[65:0] val;
        reg [65:0] i;

        begin
            i = 1;
            log2ceil = 0;

            while (i < val) begin
                log2ceil = log2ceil + 1;
                i = i << 1;
            end
        end
    endfunction

endmodule


