// Code your testbench here
// or browse Examples
module half_adder_tb();
  reg a,b;
  wire sum,carry;
  
  half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
  
  initial begin
    $dumpvars(0,half_adder_tb);
    $dumpfile("half_adder.vcd");
    $display("A B | sum carry");
    a=0; b=0; #10;
    $display("%b %b | %b %b",a,b,sum,carry);
    a=0; b=1; #10;
    $display("%b %b | %b %b",a,b,sum,carry);
    a=1; b=0; #10;
    $display("%b %b | %b %b",a,b,sum,carry);
    a=1; b=1; #10;
    $display("%b %b | %b %b",a,b,sum,carry);
    $finish;
  end
endmodule
    
