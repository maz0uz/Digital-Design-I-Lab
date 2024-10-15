`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:16:47 PM
// Design Name: 
// Module Name: Experiment1
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


module Experiment1(
input [0:3] x, output [0:6] out
    );
    
    assign out[0] = (x[3]&x[2]) | (x[3]&x[1]) | (x[2]&~x[1]&~x[0]) | (x[0]&~x[1]&~x[2]&~x[3]);
    assign out[1] = (x[3]&x[2]) | (x[3]&x[1]) | (x[2]&~x[1]&x[0]) | (x[2]&x[1]&~x[0]);
    assign out[2] = (x[3]&x[2]) | (x[3]&x[1]) | (~x[2]&x[1]&~x[0]);
    assign out[3] = (x[3]&x[2]) | (x[3]&x[1]) | (x[0]&~x[1]&~x[2]&~x[3]) | (x[2]&x[1]&x[0]) | (x[2]&~x[1]&~x[0]);
    assign out[4] = (x[3]&x[2]) | (x[3]&x[1]) | (~x[1]&x[2]) | (x[0]&x[1]);
    assign out[5] = (x[3]&x[2]) | (x[3]&x[1]) | (x[1]&x[0]) | (~x[3]&~x[2]&x[0]) + (~x[3]&~x[2]&x[1]);
    assign out[6] = (x[3]&x[2]) | (x[3]&x[1]) | (x[2]&x[1]&x[0]) | (~x[3]&~x[2]&~x[1]);
    
endmodule
