`timescale 1ns/1ns
`include "Alu_Ref.v"

module Alu_Ref_tb;

reg[7:0] A;
reg[7:0] B;
reg[1:0] COND;
wire[7:0] OUT;
wire CARRY;

Alu_Ref uut(.A(A), .B(B), .COND(COND), .OUT(OUT), .CARRY(CARRY));

initial begin
    $dumpfile("Alu_Ref_tb.vcd");
    $dumpvars(0, Alu_Ref_tb);

    A=8'b00000110;
    B=8'b01100000;
    COND=2'b00;
    #20;

    case (COND)
        2'b00:    
            $display("Se procede a sumar A y B");
        2'b01:
            $display("Se procede a restar A y B");
        2'b10:
            $display("Son A y B iguales?");
        2'b11:
            $display("Es alguna de ellas, A y B, solo 1?");
        default:
            $display("Operacion invalida, retornaremos por defecto la suma entre A y B"); 
            
    endcase
    $display("%b", OUT);
end
endmodule