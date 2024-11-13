`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 05:37:52 PM
// Design Name: 
// Module Name: dig_lock
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


module dig_lock(
    input [3:0]in,
    input clk,
    rst,
    
    output z
    );
    
    wire [3:0]out;
    wire clk_out;
    
    reg [2:0] state, nextState;
    
    parameter [2:0] A=3'b000 , B=3'b001 , C=3'b010 , D=3'b011, T=3'b100;
    
    clockDivider #(500000) myclk( .clk(clk), .rst(rst), .en(1), .clk_out(clk_out) );
    
    pushButton butA( .A(in[0]), .clk(clk_out), .rst(rst), .z(out[0]) );
    
    pushButton butB( .A(in[1]), .clk(clk_out), .rst(rst), .z(out[1]) );
    
    pushButton butC( .A(in[2]), .clk(clk_out), .rst(rst), .z(out[2]) );
    
    pushButton butD( .A(in[3]), .clk(clk_out), .rst(rst), .z(out[3]) );
    
    always @ (out or state)
        case (state)
        A: if (out==4'b1000) nextState = B;
           else nextState = A;
        B: begin 
                if (out==4'b0010) nextState = C;
                else if (out==4'b0000) nextState = B;
                else nextState = A;
           end
        C: begin
               if (out==4'b0001 || out==4'b0000) nextState = D;
               else if (out==4'b0000) nextState = C;
               else nextState = A;
           end
        D: begin
               if (out==4'b0100 || out==4'b0000) nextState = T;
               else if (out==4'b0000) nextState = D;
               else nextState = A;
           end

        default: nextState = A;
        endcase
    
    always @ (posedge clk_out or posedge rst) begin
        if(rst) state <= A;
        else state <= nextState;
    end
    
    assign z = (state == T);
    
endmodule
