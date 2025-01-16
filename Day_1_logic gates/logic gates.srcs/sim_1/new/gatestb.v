`timescale 1ns / 1ps

module gatestb;
reg a,b;
wire  not_gate,and_gate,or_gate,xor_gate,xnor_gate,nand_gate,nor_gate;
logic_gates uut(a,b,not_gate,and_gate,or_gate,xor_gate,xnor_gate,nand_gate,nor_gate);

initial 
begin
        a = 0; b = 0; 
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end
 
endmodule


