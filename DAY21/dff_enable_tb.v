// Code your testbench here
// or browse Examples
module dff_enable_tb;
    reg clk;
    reg rst;
    reg en;
    reg d;
    wire q;
    dff_enable uut (.clk(clk),.rst(rst),.en(en),.d(d),.q(q));
    always #5 clk = ~clk;
    initial begin
      $dumpfile("dff_enable_tb.vcd");
      $dumpvars(0, dff_enable_tb);
      $monitor("TIME=%0t | clk=%b rst=%b en=%b d=%b q=%b",
               $time, clk, rst, en, d, q);
        clk = 0;
        rst = 1;
        en  = 0;
        d   = 0;
        #10 rst = 0;
        // Test1: Enable = 1 -> q should follow d
        #10 en = 1; d = 1;
        #10 d = 0;
        #10 d = 1;
        // Test2: Enable = 0 -> q should hold
        #10 en = 0; d = 0;
        #20 d = 1;   
        #20 $finish;
    end
endmodule
