module MaxSelect (clk, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, max_en, max_reset, max, max_ready);
    // I/O
    input [25:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9;
    input clk, max_en, max_reset;
    output reg [3:0] max; // index of max
    output reg max_ready;

    // internal reg
    reg [25:0] in [0:9];
    reg [3:0] count; // counter

    // find max when ready
    always @ (posedge clk) begin
        // reset
        if (max_reset) begin
            max <= 0;
            max_ready <= 0;
            count <= 0;
        end
        if (max_en) begin
            if (count == 0) begin // latch inputs and reset
                in[0] <= in0;
                in[1] <= in1;
                in[2] <= in2;
                in[3] <= in3;
                in[4] <= in4;
                in[5] <= in5;
                in[6] <= in6;
                in[7] <= in7;
                in[8] <= in8;
                in[9] <= in9;
                max <= 0;
                max_ready <= 0;
                count <= count + 1;
            end
            else if (count < 10) begin // compare
                if ($signed(in[max]) < $signed(in[count])) begin
                    max <= count;
                end
                count <= count + 1;
            end 
            else begin // max is ready
                max_ready <= 1;
            end
        end
    end   

endmodule
