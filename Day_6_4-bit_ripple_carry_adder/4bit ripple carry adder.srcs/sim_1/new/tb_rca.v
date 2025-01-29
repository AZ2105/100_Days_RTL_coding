`timescale 1ns / 1ps

module tb_rca;

reg [3:0] X;
reg [3:0] Y;

wire [3:0] S;
wire Co;

rca uut (
    .X(X),
    .Y(Y),
    .S(S),
    .Co(Co)
);

initial begin
    X = 4'b0000; Y = 4'b0000; #10;
    X = 4'b0001; Y = 4'b0001; #10;
    X = 4'b0010; Y = 4'b0011; #10;
    X = 4'b0100; Y = 4'b0101; #10;
    X = 4'b0111; Y = 4'b0110; #10;
    X = 4'b1001; Y = 4'b1000; #10;
    X = 4'b1010; Y = 4'b1011; #10;
    X = 4'b1101; Y = 4'b1110; #10;

    $stop;
end
endmodule
