`timescale 1ns/1ns
`include "Hello.v"

module Hello_tb;
reg A;
wire B;

Hello uut(A, B);

initial begin
    $dumpfile("Hello_tb.vcd");
    $dumpvars(0, Hello_tb);

    A=0;
    #30;

    A=1;
    #30;

    A=0;
    #30;

    $display("Success!");
end

endmodule