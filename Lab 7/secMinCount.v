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
    reg [3:0] en;
    clockDivider cDiv(.clk(clk), .rst(reset), .en(1), .clk_out(clk_out));
    
    counter_x_bit #(4, 10) mod10a(.clk(clk_out), .reset(reset), .en(en[0]), .count(secUnits));
    counter_x_bit #(3, 6) mod6a(.clk(clk_out), .reset(reset), .en(en[1]), .count(secTens));
    counter_x_bit #(4, 10) mod10b(.clk(clk_out), .reset(reset), .en(en[2]), .count(minUnits));
    counter_x_bit #(3, 6) mod6b(.clk(clk_out), .reset(reset), .en(en[3]), .count(minTens));
    
    always @(posedge clk_out) begin
        en[0] <= enable;
        en[1] <= (secUnits == 9);
        en[2] <= (secTens == 5) & en[1];
        en[3] <= en[2] & minUnits;
   
    end
    
endmodule
