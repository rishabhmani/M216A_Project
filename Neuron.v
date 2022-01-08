`include "define.v"

module Neuron ( 
    Weight_0, 
    Weight_1, 
    Weight_2, 
    Weight_3, 
    Weight_4, 
    Weight_5, 
    Weight_6, 
    Weight_7, 
    Weight_8, 
    Weight_9, 
    Weight_10, 
    Weight_11, 
    Weight_12, 
    Weight_13, 
    Weight_14, 
    Weight_15, 
    Pixel_0, 
    Pixel_1, 
    Pixel_2, 
    Pixel_3, 
    Pixel_4, 
    Pixel_5, 
    Pixel_6, 
    Pixel_7, 
    Pixel_8, 
    Pixel_9, 
    Pixel_10, 
    Pixel_11, 
    Pixel_12, 
    Pixel_13, 
    Pixel_14, 
    Pixel_15, 
    Clk, 
    Neuron_Reset,
    Out
);

// I/O
output [25:0] Out;
input [`PIX_WIDTH-1:0] Pixel_0,Pixel_1,Pixel_2,Pixel_3,Pixel_4,Pixel_5,Pixel_6,Pixel_7,Pixel_8,Pixel_9,Pixel_10,Pixel_11,Pixel_12,Pixel_13,Pixel_14,Pixel_15;
input [`WGT_WIDTH-1:0] Weight_0,Weight_1,Weight_2,Weight_3,Weight_4,Weight_5,Weight_6,Weight_7,Weight_8,Weight_9,Weight_10,Weight_11,Weight_12,Weight_13,Weight_14,Weight_15;
input Clk;
input Neuron_Reset;

// internal wires
wire [25:0] mult_out0, mult_out1, mult_out2, mult_out3, mult_out4, mult_out5, mult_out6, mult_out7, mult_out8, mult_out9, mult_out10, mult_out11, mult_out12, mult_out13, mult_out14, mult_out15;
wire [25:0] add_out0_0, add_out0_1, add_out0_2, add_out0_3, add_out0_4, add_out0_5, add_out0_6, add_out0_7;
wire [25:0] add_out1_0, add_out1_1, add_out1_2, add_out1_3;
wire [25:0] add_out2_0, add_out2_1;
wire [25:0] add_out3_0;

// Multiplier instances 
FixedPointMultiplier mult_0(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_0),.PixelPort(Pixel_0),.Output_syn(mult_out0));
FixedPointMultiplier mult_1(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_1),.PixelPort(Pixel_1),.Output_syn(mult_out1));
FixedPointMultiplier mult_2(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_2),.PixelPort(Pixel_2),.Output_syn(mult_out2));
FixedPointMultiplier mult_3(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_3),.PixelPort(Pixel_3),.Output_syn(mult_out3));
FixedPointMultiplier mult_4(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_4),.PixelPort(Pixel_4),.Output_syn(mult_out4));
FixedPointMultiplier mult_5(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_5),.PixelPort(Pixel_5),.Output_syn(mult_out5));
FixedPointMultiplier mult_6(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_6),.PixelPort(Pixel_6),.Output_syn(mult_out6));
FixedPointMultiplier mult_7(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_7),.PixelPort(Pixel_7),.Output_syn(mult_out7));
FixedPointMultiplier mult_8(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_8),.PixelPort(Pixel_8),.Output_syn(mult_out8));
FixedPointMultiplier mult_9(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_9),.PixelPort(Pixel_9),.Output_syn(mult_out9));
FixedPointMultiplier mult_10(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_10),.PixelPort(Pixel_10),.Output_syn(mult_out10));
FixedPointMultiplier mult_11(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_11),.PixelPort(Pixel_11),.Output_syn(mult_out11));
FixedPointMultiplier mult_12(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_12),.PixelPort(Pixel_12),.Output_syn(mult_out12));
FixedPointMultiplier mult_13(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_13),.PixelPort(Pixel_13),.Output_syn(mult_out13));
FixedPointMultiplier mult_14(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_14),.PixelPort(Pixel_14),.Output_syn(mult_out14));
FixedPointMultiplier mult_15(.clk(Clk),.GlobalReset(Neuron_Reset),.WeightPort(Weight_15),.PixelPort(Pixel_15),.Output_syn(mult_out15));


// Layer 0 adders
FixedPointAdder adder_0_0(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out0),.Port2(mult_out1),.Output_syn(add_out0_0));
FixedPointAdder adder_0_1(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out2),.Port2(mult_out3),.Output_syn(add_out0_1));
FixedPointAdder adder_0_2(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out4),.Port2(mult_out5),.Output_syn(add_out0_2));
FixedPointAdder adder_0_3(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out6),.Port2(mult_out7),.Output_syn(add_out0_3));
FixedPointAdder adder_0_4(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out8),.Port2(mult_out9),.Output_syn(add_out0_4));
FixedPointAdder adder_0_5(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out10),.Port2(mult_out11),.Output_syn(add_out0_5));
FixedPointAdder adder_0_6(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out12),.Port2(mult_out13),.Output_syn(add_out0_6));
FixedPointAdder adder_0_7(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(mult_out14),.Port2(mult_out15),.Output_syn(add_out0_7));

// Layer 1 adders
FixedPointAdder adder_1_0(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out0_0),.Port2(add_out0_1),.Output_syn(add_out1_0));
FixedPointAdder adder_1_1(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out0_2),.Port2(add_out0_3),.Output_syn(add_out1_1));
FixedPointAdder adder_1_2(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out0_4),.Port2(add_out0_5),.Output_syn(add_out1_2));
FixedPointAdder adder_1_3(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out0_6),.Port2(add_out0_7),.Output_syn(add_out1_3));

// Layer 2 adders
FixedPointAdder adder_2_0(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out1_0),.Port2(add_out1_1),.Output_syn(add_out2_0));
FixedPointAdder adder_2_1(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out1_2),.Port2(add_out1_3),.Output_syn(add_out2_1));

// Layer 3 adder
FixedPointAdder adder_3_0(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out2_0),.Port2(add_out2_1),.Output_syn(add_out3_0));

// Accumulator
FixedPointAdder acc(.clk(Clk),.GlobalReset(Neuron_Reset),.Port1(add_out3_0),.Port2(Out),.Output_syn(Out));

endmodule
