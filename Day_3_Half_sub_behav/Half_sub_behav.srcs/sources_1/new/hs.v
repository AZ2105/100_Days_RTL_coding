`timescale 1ns / 1ps

module hs(
    input A, B,
    output reg Difference, Borrow
);
    always @(A or B) begin
        Difference = A ^ B;
        Borrow = ~A & B;
    end
endmodule

