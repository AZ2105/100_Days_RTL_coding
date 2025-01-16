`timescale 1ns / 1ps

module ha_gate(
    input A, B,
    output Sum, Carry
);
    xor(Sum, A, B);
    and(Carry, A, B);
endmodule

