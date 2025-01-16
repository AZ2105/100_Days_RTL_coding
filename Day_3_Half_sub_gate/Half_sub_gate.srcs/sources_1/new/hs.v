`timescale 1ns / 1ps

module hs(
    input A, B,
    output Difference, Borrow
);
    xor(Difference, A, B);
    and(Borrow, ~A, B);
endmodule

