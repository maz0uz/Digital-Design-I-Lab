`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 08:16:22 PM
// Design Name: 
// Module Name: secMinCount
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


module secMinCount(input clk, reset, enable, output [3:0] secUnits, [2:0] secTens, [3:0] minUnits, [2:0] minTens);
    
    wire clk_out;
    wire [3:0] en;
    clockDivider cDiv(.clk(clk), .rst(reset), .en(1), .clk_out(clk_out));
    
    assign en[0] = enable;
    counter_x_bit #(4, 10) mod10a(.clk(clk_out), .reset(reset), .en(en[0]), .count(secUnits));
    
    assign en[1] = (secUnits == 9);
    counter_x_bit #(3, 6) mod6a(.clk(clk_out), .reset(reset), .en(en[1]), .count(secTens));
    
    assign en[2] = (secTens == 5) && en[1];
    counter_x_bit #(4, 10) mod10b(.clk(clk_out), .reset(reset), .en(en[2]), .count(minUnits));
    
    assign en[3] = en[2] && (minUnits == 9);
    counter_x_bit #(3, 6) mod6b(.clk(clk_out), .reset(reset), .en(en[3]), .count(minTens));
   
    
endmodule
