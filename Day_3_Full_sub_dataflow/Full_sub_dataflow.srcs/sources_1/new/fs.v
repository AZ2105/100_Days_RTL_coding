`timescale 1ns / 1ps

module fs(
    input A, B, Bin,
    output Difference, Bout
);
    assign Difference = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~(A ^ B) & Bin);
endmodule

