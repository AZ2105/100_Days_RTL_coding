`timescale 1ns / 1ps

module fs(
    input A, B, Bin,
    output reg Difference, Bout
);
    always @(A or B or Bin) begin
        Difference = A ^ B ^ Bin;
        Bout = (~A & B) | (~(A ^ B) & Bin);
    end
endmodule
