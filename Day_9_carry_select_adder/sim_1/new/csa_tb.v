`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 23:18:23
// Design Name: 
// Module Name: csa_tb
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


module csa_tb;
reg[3:0]a,b;
reg carry;
wire[3:0]sum;
wire Cout;
carry_select_adder dut(a,b,carry,sum,Cout);
initial begin
            carry=1'b0;a=4'b1011;b=4'b1010;
        #10 carry=1'b1;a=4'b1001;b=4'b1110;
        #10 carry=1'b0;a=4'b0001;b=4'b1010;
        #10 carry=1'b1;a=4'b1100;b=4'b0011;
    end

    initial begin 
	$monitor("a=%b b=%b carry=%b sum=%b Cout=%b",a,b,carry,sum,Cout);
      #40 $finish;
    end 
endmodule
