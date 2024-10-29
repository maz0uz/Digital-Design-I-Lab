`timescale 1ns / 1ps

module E2_testbench();
    reg clk, reset, en;
    wire clk_out;
    clockDivider #(10) DUT (clk, reset, en, clk_out);
    initial begin
        clk = 0;
        forever #10 clk=~clk;
    end
    initial begin
        en = 1;
        reset = 1;
        #100
        reset = 0;
    end
endmodule