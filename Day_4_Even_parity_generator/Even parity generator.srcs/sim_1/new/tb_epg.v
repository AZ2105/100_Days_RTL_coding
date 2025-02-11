`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2025 22:03:31
// Design Name: 
// Module Name: tb_epg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_epg;
 reg [7:0] data_in;
  wire parity;
  reg clk;

  even_parity_generator dut(data_in, parity);

  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    data_in = 8'b00000000;
    #10;
    data_in = 8'b00000001;
    #10;
    data_in = 8'b00000011;
    #10;
    data_in = 8'b10000000;
    #10;
    data_in = 8'b11011111;
    #10;
    data_in = 8'b01010101;
    #10;
    data_in = 8'b10101010;
    #10;
    $finish;
  end

  always @(posedge clk) begin
    $display("Data: %b, Parity: %b", data_in, parity);
  end
endmodule

