`timescale 1ns / 1ps

module fs(
    input A, B, Bin,
    output Difference, Bout
);
    wire D1, B1, B2;

    xor(D1, A, B);
    xor(Difference, D1, Bin);
    and(B1, ~A, B);
    and(B2, ~D1, Bin);
    or(Bout, B1, B2);
endmodule
