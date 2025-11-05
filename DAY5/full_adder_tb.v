// Code your testbench here
// or browse Examples
module full_adder_tb();
  reg a,b,c;
  wire sum,carry;
  
  full_adder uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  
  initial begin
    $dumpvars(0,full_adder_tb);
    $dumpfile("full_adder.vcd");
    $display("A B C | sum carry");
    a=0; b=0; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=0; b=1; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=0; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=1; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=0; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=0; c=1; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=1; c=0; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    a=1; b=1; c=1; #10;
    $display("%b %b %b | %b %b",a,b,c,sum,carry);
    $finish;
  end
endmodule
    
