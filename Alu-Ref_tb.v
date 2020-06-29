`timescale 2ns/2ns
`include "Alu_Ref.v"

module Alu_Ref;

wire[7:0] A;
wire[7:0] B;
wire[1:0] COND;
reg[7:0] OUTPUT;
reg CARRY;

Alu_Ref uut(A, B, COND, OUTPUT, CARRY);

initial begin
    $dumpfile("Alu_Ref_tb.vcd");
    $dumpvars(0, Alu_Ref);

    A=2'b00000000;
    B=2'b00000000;
    COND=2'b00;
    #20;
    case (COND)
        2'b00:    
            $display("Se procede a suma A y B")
            $display("%b", OUT)
        2'b01:
            $display("Se procede a restar A y B")
            $display("%b", OUT)
        2'b10:
            $display("Son A y B iguales?")
            $display("%b", OUT)
        2'b11:
            $display("Es alguna de ellas, A y B, solo 1?")
            $display("%b", OUT) 
        default: 
    endcase
    
end