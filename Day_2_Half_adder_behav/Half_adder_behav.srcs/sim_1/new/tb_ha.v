`timescale 1ns / 1ps
module tb_ha;

reg A,B;
wire Sum,Carry;

ha uut (
    .A(A), 
    .B(B), 
    .Sum(Sum), 
    .Carry(Carry)
);

initial begin

    A = 0;
    B = 0;

    #100;

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $stop;
end
endmodule
