`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:08:29 PM
// Design Name: 
// Module Name: Exp2_testbench
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


module full_adder_1_testbench();
reg [0:3] A; reg [0:3] B; reg Cin;
wire [0:3] S; wire C;
wire [0:3] ref_s; wire ref_cout, err;

rca_4 dut(.A(A),.B(B), .Cin(Cin), .S(S), .Cout(C));

assign {ref_cout, ref_s} = A + B + Cin;

assign err = (ref_s != S) || (ref_cout != C);


integer i;
initial begin
    for ( i = 0; i < 512; i = i + 1 ) begin
        {A, B, Cin} = i; #10
        if (err == 1)
        $display("Input combination %d failed.", i);
end
end
endmodule
