module Alu_Ref(
           input [7:0] A,//Input A de 8 bits
           input [7:0] B,//Input A de 8 bits
           input [1:0] COND,// Elige la eleccion de la ULA
           output [7:0] OUT, // Output 8-bits de la ULA
           output CARRY); // Carry de la ULA;
    
    reg [7:0] RESULTADO;
    assign OUT = RESULTADO; // OUTPUT de la ULA
    //assign tmp = {1'b0,A} + {1'b0,B};
    //assign CarryOut = tmp[8]; // Carryout flag
    wire [8:0] aux;
    assign aux = {1'b0, A} + {1'b0, B};
    assign CARRY = aux[8];
    always @ (*) begin
        case(COND)
        2'b00: // Suma de 2 N de 8 Bits
            RESULTADO = A + B; 
        2'b01: // Resta de 2 N de 8 bits
            RESULTADO =  A - B;
        2'b10: //  Puerta AND 
            RESULTADO =A&B;
        2'b11: //  Puerta OR
            RESULTADO =A|B;
        //En caso de no porner una entrada valida al multiplexor de elección
        //Retornamos la suma
        default: RESULTADO = A + B ; 
        endcase
    end

endmodule