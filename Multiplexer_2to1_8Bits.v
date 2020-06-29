module Multiplexer_B_or_notB(  input wire [7:0] B,
                                input wire [1:0] COND,
                                output wire [7:0] OUT);

    always @ (B)begin
        case(COND)
        2'b0    :   OUT = B;
        2'b1    :   OUT = ~B;
        endcase
    end
endmodule