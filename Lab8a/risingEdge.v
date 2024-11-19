`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 03:14:18 PM
// Design Name: 
// Module Name: risingEdge
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


module rising_edge(input clk, rst, w, output z);
    reg [1:0] state, nextState;
    
    
    always @ (w or state)
        case (state)
        A: if (w==0) nextState = 2'b00;
           else nextState = 2'b01;
        B: if (w==0) nextState = 2'b00;
           else nextState = 2'b10;
        C: if (w==0) nextState = 2'b00;
           else nextState = 2'b10;
        default: nextState = 2'b00;
    endcase
    
    
    always @ (posedge clk or posedge rst) begin
        if(rst) state <= 2'b00;
        else state <= nextState;
    end
  
    assign z = (state == 2'b01);
endmodule
