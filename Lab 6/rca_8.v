`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 04:13:02 PM
// Design Name: 
// Module Name: rca_8
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


module rca_8(input [7:0] A, input [7:0] B, input Cin, output [7:0] S, output Cout);

    wire [0:8] C;
    genvar i;
    generate
        assign C[0] = Cin;
        for(i=0; i< 8; i=i+1) begin: rcaloop
            full_adder_1 FA1(.Cin(C[i]),.A(A[i]),.B(B[i]),.C(C[i+1]),.S(S[i]));
        end
        assign Cout = C[8];
    endgenerate
    
endmodule
