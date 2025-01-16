`timescale 1ns / 1ps

module ha(
    input A, B,
    output reg Sum, Carry
);
    always @(A or B) begin
        Sum = A ^ B;
        Carry = A & B;
    end
endmodule

