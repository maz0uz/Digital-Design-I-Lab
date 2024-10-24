module Experiment3(input [0:3] x, output reg [0:6] out, input en, output reg [3:0] anode, input [0:1] dig);

    always @ (*) begin
        if(en== 1'b1) begin
            case(dig)
                0: anode = 4'b0111;
                1: anode = 4'b1011;
                2: anode = 4'b1101;
                3: anode = 4'b1110;
            endcase
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