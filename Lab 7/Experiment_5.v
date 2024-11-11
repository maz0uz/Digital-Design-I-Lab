`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:07:09 PM
// Design Name: 
// Module Name: Experiment_5
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


module Experiment_5(input clk, reset, enable, output [0:6] out, [3:0] anodes);
    
    wire clk_out;
    wire [1:0] count;
    wire [3:0] secUnits;
    wire [2:0] secTens;
    wire [3:0] minUnits;
    wire [2:0] minTens;
    wire [3:0] muxOut;
    
    clockDivider #(250000) myDiv(.clk(clk), .rst(reset), .en(enable), .clk_out(clk_out));
    
    counter_x_bit #(2, 4) myCount(.clk(clk_out), .reset(reset), .en(enable), .count(count));
    
    secMinCount(.clk(clk), .reset(reset), .enable(enable), .secUnits(secUnits), .secTens(secTens), .minUnits(minUnits), .minTens(minTens));
    
    mux4x1 mux(.data1(secUnits), .data2(secTens), .data3(minUnits), .data4(minTens), .sel(count), .out(muxOut));
    
    BCD7Seg segDec(.en(count), .num(muxOut), .segments(out), .anode_active(anodes));
    
endmodule
