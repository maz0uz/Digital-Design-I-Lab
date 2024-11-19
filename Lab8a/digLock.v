`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 04:37:25 PM
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


module digLock(input [3:0]in, clk, rst, output z, [6:0]out, output [3:0]anodes);
    
    wire [3:0]w1;
    wire clk_out;
    
    reg [2:0] state, nextState;
    
    
    clockDivider #(500000) myclk( .clk(clk), .rst(rst), .en(1), .clk_out(clk_out) );
    
    pushButtonDet butt1( .A(in[0]), .clk(clk_out), .rst(rst), .z(w1[0]) );
    
    pushButtonDet butt2( .A(in[1]), .clk(clk_out), .rst(rst), .z(w1[1]) );
    
    pushButtonDet butt3( .A(in[2]), .clk(clk_out), .rst(rst), .z(w1[2]) );
    
    pushButtonDet butt4( .A(in[3]), .clk(clk_out), .rst(rst), .z(w1[3]) );
    
    always @ (w1 or state)
        case (state)
        0: if (w1==4'b1000) nextState = 3'b001;
           else nextState = 3'b000;
       1: begin 
                if (w1==4'b0010) nextState = 3'b010;
                else if (w1==4'b0000) nextState = 3'b001;
                else nextState = 3'b000;
           end
        2: begin
               if (w1==4'b0001 || w1==4'b0000) nextState = 3'b011;
               else if (w1==4'b0000) nextState = 3'b010;
               else nextState = 3'b000;
           end
        3: begin
               if (w1==4'b0100 || w1==4'b0000) nextState = 3'b100;
               else if (w1==4'b0000) nextState = 3'b011;
               else nextState = 3'b000;
           end
        4: nextState = 3'b100;


        endcase
    
    always @ (posedge clk_out or posedge rst) begin
        if(rst) state <= 3'b000;
        else state <= nextState;
    end
    
    assign z = (state == 3'b100);
    
    assign anodes = 4'b0111;
    
    BCD7Seg segDec(.en(2'b11), .num(z), .segments(out), .anode_active(4'b1000));

    
    
endmodule
