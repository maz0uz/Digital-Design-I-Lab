`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 04:34:52 PM
// Design Name: 
// Module Name: Decoder2x4
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


module Decoder2x4(
input [0:1] in,
input en,
output [0:3]out
    );
   
   assign out[0] = (en & ~in[0] & ~in[1]) ? 1'b1 : 1'b0;
   assign  out[1] = (en & ~in[0] & in[1]) ? 1'b1 : 1'b0;
   assign  out[2] = (en & in[0] & ~in[1]) ? 1'b1 : 1'b0;
   assign out[3] = (en & in[0] & in[1]) ? 1'b1 : 1'b0;
endmodule


module Decoder4x16(input [0:3] in, input en, output [0:15] out);
wire [0:3] wires;

Decoder2x4 d1(.in(in[0:1]),.en(en),.out(wires[0:3]));

Decoder2x4 d2(.in(in[2:3]),.en(wires[0]),.out(out[0:3]));
Decoder2x4 d3(.in(in[2:3]),.en(wires[1]),.out(out[4:7]));
Decoder2x4 d4(.in(in[2:3]),.en(wires[2]),.out(out[8:11]));
Decoder2x4 d5(.in(in[2:3]),.en(wires[3]),.out(out[12:15]));
endmodule







