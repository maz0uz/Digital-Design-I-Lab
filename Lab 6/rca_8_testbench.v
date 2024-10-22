`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 04:15:30 PM
// Design Name: 
// Module Name: rca_8_testbench
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


module rca_8_testbench();
reg [0:7] A; reg [0:7] B; reg Cin;
wire [0:7] S; wire C;
wire [0:7] ref_s; wire ref_cout, err;

rca_8 dut(.A(A),.B(B), .Cin(Cin), .S(S), .Cout(C));

assign {ref_cout, ref_s} = A + B + Cin;

assign err = (ref_s != S) || (ref_cout != C);


integer i;
initial begin
    for ( i = 0; i < 131072; i = i + 1 ) begin
        {A, B, Cin} = i; #1
        if (err == 1)
        $display("Input combination %d failed.", i);
end
end
endmodule
