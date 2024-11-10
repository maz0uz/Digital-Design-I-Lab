`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 06:43:38 PM
// Design Name: 
// Module Name: mod10counter
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


module mod10counter(input reset, enable, clk, output [3:0] out);

    reg clk_out;
    clockDivider #(50000000) clockDiv(.clk(clk), .rst(reset), .en(enable), .clk_out(clk_out));
    counter_x_bit #(4, 10) mod10(.clk(clk_out), .rst(reset), .en(enable), .count(out));

endmodule
