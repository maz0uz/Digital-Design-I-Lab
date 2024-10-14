`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 05:50:42 PM
// Design Name: 
// Module Name: Mux_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux2x1_testbench();

reg[0:1] in;
reg sel;
wire out;

Mux2x1 mux(.in0(in[0]), .in1(in[1]),.sel(sel),.out(out));
initial begin
in[0] = 0;
in[1] = 1;
sel = 0;
#10

in[0] = 0;
in[1] = 1;
sel = 1;
#10

in[0] = 1;
in[1] = 0;
sel = 0;
#10

in[0] = 1;
in[1] = 0;
sel = 1;
end
endmodule
