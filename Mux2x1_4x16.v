`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 05:56:26 PM
// Design Name: 
// Module Name: Mux2x1_4x16
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


module Mux2x1(
input in0, in1, sel, output out
    );
    assign out = (in0 & ~sel) | (in1 & sel);
endmodule

module Mux4x1(input [0:3] in, input [0:1] sel, output out);
wire [0:1] wires;
Mux2x1 m1(.in0(in[0]),.in1(in[1]),.sel(sel[0]),.out(wires[0]));
Mux2x1 m2(.in0(in[2]),.in1(in[3]),.sel(sel[0]),.out(wires[1]));

Mux2x1 m3(.in0(wires[0]),.in1(wires[1]),.sel(sel[1]),.out(out));
endmodule