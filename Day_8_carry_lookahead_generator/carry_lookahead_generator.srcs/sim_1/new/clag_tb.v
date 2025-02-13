`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 10:15:13
// Design Name: 
// Module Name: clag_tb
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


module clag_tb;
      reg[3:0]a,b;
      reg cin;
      wire[3:0]sum;
      wire carry;
      carry_lookahead_gen dut(a,b,cin,sum,carry);
      
      initial 
       begin
        a = 4'b1000; b = 4'b0011; cin = 1'b0;
        #10 a = 4'b0001; b = 4'b1010; cin = 1'b1;
        #10 a = 4'b0110; b = 4'b0110; cin = 1'b0;
        #10 a = 4'b0111; b = 4'b1110; cin = 1'b0;
        #10 a = 4'b1001; b = 4'b0110; cin = 1'b1;
        #10 a = 4'b1001; b = 4'b0100; cin = 1'b0;
        #10 a = 4'b1111; b = 4'b1110; cin = 1'b1;
     end
     initial
     begin $monitor("a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,sum,carry);
     #70 $finish;
     end
endmodule
