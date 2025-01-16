`timescale 1ns / 1ps

module tb_hs;

reg A,B;

wire Difference,Borrow;


hs uut (
    .A(A), 
    .B(B), 
    .Difference(Difference), 
    .Borrow(Borrow)
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
