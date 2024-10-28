`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 01:48:22 PM
// Design Name: 
// Module Name: E4_testbench
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


 module csa_8_tb(); 
     reg [7:0] A;
     reg [7:0] B; 
     reg C0; 
     wire [7:0] S; 
     wire C8; 
     wire [7:0] ref_S; 
     wire err, ref_C8;  
     
     csa_8 csa_8_DUT (.A(A) , .B(B), .C0(C0), .S(S), .C8(C8)); 
     
     assign {ref_C8, ref_S} = A + B + C0; 
     assign err = (ref_S != S) || (ref_C8 != C8); 
     
     integer i; 
     initial begin 
        for(i = 0; i < 131072; i = i + 1) begin 
               {A, B, C0} = i; 
               #0.5 
               if (err == 1) 
                $display("Input combination %d failed.", i); 
        end 
      end 
endmodule
