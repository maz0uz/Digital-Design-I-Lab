`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:39:34 PM
// Design Name: 
// Module Name: E1
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


module full_adder_1(input Cin, A, B, output C, S);
    
    assign C = (A&B)|(Cin&(A|B));
    assign S = (~Cin&(A|B))|(Cin&~A&~B)|(A&B)
    
endmodule
