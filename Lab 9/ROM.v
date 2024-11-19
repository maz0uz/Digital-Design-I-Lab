`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:23:18 PM
// Design Name: 
// Module Name: ROM
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


module ROM (input [5:0] addr, output [25:0] data_out);
    reg [25:0] mem [0:63];
    assign data_out = mem[addr];
    initial begin
        mem[0] = 26'bxxxxxxxx000011xxxx11111010;
        mem[1] = 26'bxxxxxxxx000111xxxx00110010;
        mem[2] = 26'bxxxxxxxx001011xxxx00011110;
        mem[3] = 26'b000000010011100111xxxxxxxx;
        mem[4] = 26'b0000xxxx0100100101xxxxxxxx;
        mem[5] = 26'b010000100101100100xxxxxxxx;
        mem[6] = 26'b010100110110100000xxxxxxxx;
    end
endmodule

