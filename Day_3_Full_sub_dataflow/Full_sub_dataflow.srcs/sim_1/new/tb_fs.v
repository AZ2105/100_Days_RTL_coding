`timescale 1ns / 1ps

module tb_fs;

reg A;
reg B;
reg Bin;

wire Difference;
wire Bout;

fs uut (
    .A(A), 
    .B(B), 
    .Bin(Bin), 
    .Difference(Difference), 
    .Bout(Bout)
);

initial begin
    A = 0; B = 0; Bin = 0; #10;
    A = 0; B = 0; Bin = 1; #10;
    A = 0; B = 1; Bin = 0; #10;
    A = 0; B = 1; Bin = 1; #10;
    A = 1; B = 0; Bin = 0; #10;
    A = 1; B = 0; Bin = 1; #10;
    A = 1; B = 1; Bin = 0; #10;
    A = 1; B = 1; Bin = 1; #10;

    $stop;
end
      
endmodule
