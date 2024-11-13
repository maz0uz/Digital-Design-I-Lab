`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 05:08:05 PM
// Design Name: 
// Module Name: pushButton
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


module pushButton(
    input A, clk, rst,
    
    output z
    );
    
    // wire clk_out;
    wire B, C;
    
    // clockDivider #(500000) myclk( .clk(clk), .rst(rst), .en(1), .clk_out(clk_out) );
    
    debouncer mydeb(.clk(clk) , .rst(rst), .in(A), .out(B) );
    
    synchronizer mysync(.clk(clk) , .SIG(B), .SIG1(C) );
    
    rising_edge myredg( .clk(clk) , .rst(0) , .w(C), .z(z) );
    
   
endmodule
