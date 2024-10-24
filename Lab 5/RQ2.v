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


module ReportQ2(input [0:2] x, output reg [0:6] out, output reg [3:0] anode);

    always @ (*) begin
        anode = 4'b1110;
        case(x)
            0: out = 7'b0000001;
            1: out = 7'b0011000;
            2: out = 7'b0110000;
            3: out = 7'b0001001;
            4: out = 7'b0110001;
            5: out = 7'b1110001;
            6: out = 7'b0100100;
            default: out = 7'b0111000;
        endcase
    end

endmodule