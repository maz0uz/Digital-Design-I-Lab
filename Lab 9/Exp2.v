`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:36:04 PM
// Design Name: 
// Module Name: Exp2
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


module Exp2(input clk, reset, output [7:0] W_data);
    
    wire [7:0] A;
    wire [7:0] B;
    wire [5:0] count;
    wire [25:0] data_out;
    wire [7:0] ALUResult;
    wire zFlag;
    wire [7:0] mux;
    
    counter_x_bit #(6, 7) myCount(.clk(clk), .reset(reset), .en(1), .count(count));
    
    ROM myROM(.addr(count), .data_out(data_out));
    
    ALU myALU(.A(A), .B(B), .Result(ALUResult), .ALUSel(data_out[10:8]), .ZFlag(zFlag));
    
    assign mux = data_out[12] ? data_out[7:0] : ALUResult;
    
    regFile myReg(.clk(clk), .rst(reset), .A_data(A), .B_data(B), .W_data(mux), .A_addr(data_out[25:22]), .B_addr(data_out[21:18]), .W_addr(data_out[17:14]), .wr(data_out[13]));
    
    
endmodule
