module Full_Adder#(parameter N=8)
                (  input [N-1:0] A,
                    input [N-1:0] B,
                    input Carry_in,
                    output Carry_out,
                    output [N-1:0] Sum);

    case(Carry_in)
        2'b0    :   assign {Carry_out, Sum} = A + B;
        2'b1    :   assign {Carry_out, Sum} = A + (~B) + Carry_in;
    end
    
endmodule