`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 05:04:04 PM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer(
input clk,
input SIG,
output SIG1
);

    reg META;
    reg temp;
    
    always @(posedge clk) begin
        META <= SIG;
        temp <= META;
    end

    assign SIG1 = temp;

endmodule
