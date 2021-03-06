// ********************************************************************
//
// Copyright (C) 1994-2014, Synopsys Inc.  All Rights Reserved

// This code was generated by Synopsys's Synphony Model Compiler product and
// is intended for use solely by licensed users of this product.

// VERILOG created by Synphony Model Compiler J-2014.09, Build 015R, Aug 22 2014
// Date written:             Thu Nov  2 21:03:32 2017

// ********************************************************************

// Generated from /w/ee.00/abidi/uneeb93/Projects/TASHIP_Project/MATLAB/FixedPointAdder.slx Version 1.4 Last modified date Wed Nov 01 23:47:16 2017
//@
module FixedPointAdder (
  input clk,
  input GlobalReset,
  input [25:0] Port2, // sfix26_En18
  input [25:0] Port1, // sfix26_En18
  output [25:0] Output_syn // sfix26_En18
//@
);
//@

wire [25:0] N_1;  
wire [25:0] N_2;  
wire [25:0] N_3;  
wire [0:0] GlobalEnableSignal1;  
wire GlobalResetSel;
  wire GlobalEnable1;
  assign GlobalEnable1 = 1;
  assign GlobalEnableSignal1 = GlobalEnable1;
  assign N_3 = Port2;
  assign N_2 = Port1;
assign Output_syn = N_1;
  generate
  begin: Adder_26b_18f_block
    wire enab;
    wire [26:0] tmpOut;
    wire signed [26:0] tmp_N_2_0;
    wire signed [26:0] tmp_N_3_1;
    wire [26:0] tmpOutPre;
    assign  enab= GlobalEnable1;
    assign tmp_N_2_0 = ($signed(N_2) << 0);
    assign tmp_N_3_1 = ($signed(N_3) << 0);
    assign  tmpOutPre =   tmp_N_2_0 + tmp_N_3_1;
    synDelayWithEnable #( .bitwidth(27), .preferRAMImpl(2), .delaylength(1) ) delayForLatency_block ( .clk(clk), .en(enab), .grst(GlobalResetSel), .rst(1'b0), .inp(tmpOutPre), .outp(tmpOut) );
    synBusSatRnd #( .inp_width(27), .out_width(26), .infrac(18), .outfrac(18), .round(0), .sat(0), .datatype("SS") )
    sat_tmpOut ( .inp(tmpOut), .outp(N_1) );
  end // Adder_26b_18f_block
  endgenerate
assign GlobalResetSel = GlobalReset;
endmodule

//-----------------------------------------

