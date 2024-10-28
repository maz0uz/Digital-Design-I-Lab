`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 02:07:34 PM
// Design Name: 
// Module Name: E5
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


module addsub_4(input [3:0] A, input[3:0] B, input Cin, output [3:0] sum, output Cout);
   wire [3:0] l;
   assign l[0]=A[0]^Cin;
   assign l[1]=A[1]^Cin;
   assign l[2]=A[2]^Cin;
   assign l[3]=A[3]^Cin;
   rca_4 RCA(.A(l),.B(B),.Cin(Cin),.sum(sum),.Cout(Cout));
endmodule