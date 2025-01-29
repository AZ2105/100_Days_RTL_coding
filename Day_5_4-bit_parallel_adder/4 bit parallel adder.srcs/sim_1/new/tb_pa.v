`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2025 22:53:33
// Design Name: 
// Module Name: tb_pa
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


module tb_pa;
 reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire carry;
    
    parallel_adder dut (a,b,cin,sum,carry);
    
    always begin        
        a= $random;
        b= $random;
        cin= $random;
        #10; 
    end
    initial
    begin $monitor("a= %b  b= %b  cin= %b  sum= %b  carry= %b",a, b, cin, sum, carry);
    #60 $finish;
    end
endmodule
