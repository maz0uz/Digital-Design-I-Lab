`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 06:41:11 PM
// Design Name: 
// Module Name: BCD7Seg
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


module BCD7Seg( input [1:0] en, input num, output reg [0:6] segments, output reg [3:0] anode_active); 

 always @ (en, num) begin
 
    case (en)
        2'b00: anode_active = 4'b0111; 
        2'b01: anode_active = 4'b1011; 
        2'b10: anode_active = 4'b1101; 
        2'b11: anode_active = 4'b0001; 
    endcase
    
    case (num)
        1'b0: segments = 7'b1000111;
        1'b1: segments = 7'b1000001; 

     endcase  
 end
 
endmodule
