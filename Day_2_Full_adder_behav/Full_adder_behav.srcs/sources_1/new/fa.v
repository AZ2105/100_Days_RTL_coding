`timescale 1ns / 1ps

module fa(
    input A, B, Cin,
    output reg Sum, Cout
);
    always @(A or B or Cin) begin
        Sum = A ^ B ^ Cin;
        Cout = (A & B) | (B & Cin) | (Cin & A);
    end
endmodule

