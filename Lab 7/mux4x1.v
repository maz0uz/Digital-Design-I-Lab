`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:19:06 PM
// Design Name: 
// Module Name: 4x1MUX
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


module mux4x1 (
    input [3:0] data1,
    [3:0] data2,
    [3:0] data3,
    [3:0] data4,
    [1:0] sel,
    output [3:0] out
);
    assign out = (sel == 2'b00) ? data1 :
                 (sel == 2'b01) ? data2 :
                 (sel == 2'b10) ? data3 :
                 (sel == 2'b11) ? data4 : 4'b0000;
endmodule
