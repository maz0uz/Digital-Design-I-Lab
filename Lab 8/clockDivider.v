`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 03:46:29 PM
// Design Name: 
// Module Name: E2
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


module clockDivider #(parameter n = 50000000) (input clk, rst, en, output reg clk_out);
    wire [31:0] count;
    counter_x_bit #(32,n) counterMod (.clk(clk), .reset(rst), .en(en), .count(count));
    always @ (posedge clk, posedge rst) begin
        if (rst)
            clk_out <= 0;
        else if (count == n-1)
            clk_out <= ~ clk_out;
    end
endmodule
