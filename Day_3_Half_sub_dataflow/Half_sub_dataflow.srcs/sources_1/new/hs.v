`timescale 1ns / 1ps

module hs(
    input A, B,
    output Difference, Borrow
);
    assign Difference = A ^ B;
    assign Borrow = ~A & B;
endmodule

