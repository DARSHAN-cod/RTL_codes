// Code your testbench here
// or browse Examples

`timescale 1ns/1ps

module ripple_full_adder_tb;
  reg [3:0]a;
  reg [3:0]b;
  reg c;
  wire [3:0] sum;
  wire carry;
  
  ripple_carry_adder uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,uut);
    
    $monitor("Time=%d | A=%b B=%b C=%b | SUM=%b CARRY=%b",$time,a,b,c,sum,carry);
    a=4'b1000; b=4'b0101; c=0; #10;
    a=4'b0110; b=4'b0001; c=0; #10;
    a=4'b1010; b=4'b1010; c=0; #10;
    a=4'b1001; b=4'b0001; c=1; #10;
    $finish;
  end
endmodule
