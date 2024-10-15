`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:35:21 PM
// Design Name: 
// Module Name: Experiment2
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


module Experiment3(input [0:3] x, output reg [0:6] out, input en, output reg [3:0] anode);

    always @ (*) begin
        if(en== 1'b1) begin
            anode = 4'b1110;
            case(x)
                0: out = 7'b0000001;
                1: out = 7'b1001111;
                2: out = 7'b0010010;
                3: out = 7'b0000110;
                4: out = 7'b1001100;
                5: out = 7'b0100100;
                6: out = 7'b0100000;
                7: out = 7'b0001111;
                8: out = 7'b0000000;
                9: out = 7'b0000100;
                10: out = 7'b0001000;
                11: out = 7'b1100000;
                12: out = 7'b0110001;
                13: out = 7'b1000010;
                14: out = 7'b0110000;
                default: out = 7'b0111000;
            endcase
        end
        else begin
            anode = 4'b1111;
        end
    end

endmodule
