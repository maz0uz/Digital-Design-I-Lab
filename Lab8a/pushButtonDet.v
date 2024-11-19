`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 03:42:21 PM
// Design Name: 
// Module Name: pushButtonDet
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


module pushButtonDet(input A, clk, rst, output z);
    
    wire B, C;
    // wire clk_out

    // clockDivider #(500000) myclk( .clk(clk), .rst(rst), .en(1), .clk_out(clk_out) );
    
    debouncer deb1(.clk(clk) , .rst(rst), .in(A), .out(B) );
    
    synchronizer sync1(.clk(clk) , .SIG(B), .SIG1(C) );
    
    rising_edge risEdg( .clk(clk) , .rst(0) , .w(C), .z(z) );
    
   
endmodule
