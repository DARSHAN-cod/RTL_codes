// Code your testbench here
// or browse Examples
module carry_look_adder_tb;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  carry_look_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout)); 
  initial begin
    $dumpvars(1,carry_look_adder_tb);
    $dumpfile("dump.vcd"); 
    $monitor("Time=%d | a=%b b=%b c=%b | sum=%b carry=%b",$time,a,b,cin,sum,cout); 
    a=4'b1000; b=4'b0101; cin=0; #10;
    a=4'b1010; b=4'b1101; cin=1; #10;
    a=4'b1001; b=4'b0011; cin=0; #10;
    a=4'b0100; b=4'b1101; cin=0; #10;
    $finish;
  end 
endmodule
