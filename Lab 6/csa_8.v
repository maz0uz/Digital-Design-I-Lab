`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 04:34:21 PM
// Design Name: 
// Module Name: csa_8
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


module csa_8(input [7:0] A, input [7:0] B, input C0, output C8, output [7:0] S);

    wire C4; 
    wire [3:0] Sl;
    wire [3:0] Su0; 
    wire [3:0] Su1; 
    wire C40, C41; 
    
    rca_4 rca1 (.A(A[3:0]), .B(B[3:0]), .C0(C0), .C4(C4), .S(Sl)); 
    rca_4 rca2 (.A(A[7:4]), .B(B[7:4]), .C0(1'b0), .C4(C4_0), .S(Su0)); 
    rca_4 rca3 (.A(A[7:4]), .B(B[7:4]), .C0(1'b1), .C4(C41), .S(Su1)); 
    assign S[3:0] = Sl;
    assign S[7:4] = (C4 == 1'b0) ? Su0 : Su1; 
    assign C8 = (C4 == 1'b0) ? C40 : C41; 
    
endmodule
