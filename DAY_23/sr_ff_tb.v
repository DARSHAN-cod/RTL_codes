// Code your testbench here
// or browse Examples
module sr_ff_tb;
    reg clk, rst;
    reg S, R;
    wire q;
  sr_ff uut(.clk(clk), .rst(rst), .S(S), .R(R), .q(q));
    always #5 clk = ~clk;
    initial begin
        $dumpfile("sr_ff.vcd");
        $dumpvars(0, sr_ff_tb);
      $monitor("time = %0d | S=%b  R=%b  |  Q=%b",$time,S,R,q);
        clk = 0;
        rst = 1; S = 0; R = 0;
        #10 rst = 0;
        S = 0; R = 0; #10;
        S = 0; R = 1; #10;
        S = 1; R = 0; #10;
        S = 1; R = 1; #10;
        $finish;
    end
endmodule
