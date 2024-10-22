`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:54:12 PM
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


module rca_4(input [3:0] A, input [3:0] B, input Cin, output [3:0] S, output Cout);
    wire [0:4] C;
    genvar i;
    generate
        assign C[0] = Cin;
        for(i=0; i< 4; i=i+1) begin: rcaloop
            full_adder_1 FA1(.Cin(C[i]),.A(A[i]),.B(B[i]),.C(C[i+1]),.S(S[i]));
        end
        assign Cout = C[4];
    endgenerate
endmodule
