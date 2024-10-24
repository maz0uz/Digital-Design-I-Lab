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


module LabReport5Q3 (input [1:0] en, output reg [11:0] out, output reg [3:0] anode);
 
 reg [2:0] c=d0, d1, d2, d3;
 always @ (en) begin
    case (en)
    
       0: begin
         anode = 4'b0000;
           d0 = 3'b011; 
           d1 = 3'b010; 
           d2 = 3'b001; 
           d3 = 3'b000; 
       end
           
       1: begin
         anode = 4'b0000;
           d0 = 3'b110;
           d1 = 3'b000; 
           d2 = 3'b101; 
           d3 = 3'b100;
       end
           
       2: begin
         anode = 4'b0011; 
           d0 = 3'b000; 
           d1 = 3'b000; 
           d2 = 3'b011; 
           d3 = 3'b000; 
       end
           
       3: begin
         anode = 4'b0001; 
           d0 = 3'b000; 
           d1 = 3'b111; 
           d2 = 3'b011; 
           d3 = 3'b000; 
       end    
    endcase
    end
    
    always @ (*) begin
        out [2:0] = d0;
        out [5:3] = d1;
        out [8:6] = d2;
        out [11:9] = d3;
    end
    
   ReportQ2 L1 (d0, segments);
   ReportQ2 L2 (d1, segments);
   ReportQ2 L3 (d2, segments); 
   ReportQ2 L4 (d3, segments);

endmodule
