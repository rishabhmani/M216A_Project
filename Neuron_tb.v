
module Neuron_tb();

	// regs
	reg [18:0] weight;
	reg [9:0] pixel;
	reg clk, globalreset;
	reg mult_en_tb, add_en_tb;
	wire [25:0] out;

	// integer
	integer i;

	// neuron instance
	Neuron neuron(
		.Out_o(out),
		.Weight_i(weight),
		.Pixel_i(pixel),
		.Mult_en_i(mult_en_tb),
		.Add_en_i(add_en_tb),
		.Clk_i(clk),
		.GlobalReset_i(globalreset)
		);

	// initialize inputs 
	initial begin
		weight = 1'b1;
		pixel = 1'b1;
		globalreset = 1'b1;
		clk = 1'b0;
		mult_en_tb = 1'b1;
		add_en_tb = 1'b1;
	end 

	// generate clock
	always #5 clk = ~clk;

	// monitor
	initial begin
		#10 globalreset = 1'b0;
		$monitor($time, "Out: %d", out);
		for (i = 0; i < 800; i = i + 1) begin
			#10 weight = weight + 1;
		end
		#70 $stop;
	end 
endmodule 
