`timescale 1ns / 1ps


module Decoder4x16_testbench();
reg [0:3] inputs;
reg enable;
wire [0:15] outputs;

Decoder4x16 dec(.in(inputs), .en(enable), .out(outputs));
initial begin
enable = 1'b1;

inputs = 4'b0000;
#10

inputs = 4'b0001;
#10

inputs = 4'b0010;
#10

inputs = 4'b0011;
#10

inputs = 4'b0100;
#10

inputs = 4'b0101;
#10

inputs = 4'b0110;
#10

inputs = 4'b0111;
#10

inputs = 4'b1000;
#10

inputs = 4'b1001;
#10 

inputs = 4'b1010;
#10

inputs = 4'b1011;
#10

inputs = 4'b1100;
#10

inputs = 4'b1101;
#10

inputs = 4'b1110;
#10

inputs = 4'b1111;
end

endmodule
