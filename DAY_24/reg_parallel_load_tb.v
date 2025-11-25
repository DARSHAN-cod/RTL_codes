// Code your testbench here
// or browse Examples
module reg_parallel_load_tb;
    reg clk;
    reg rst;
    reg en;
    reg [7:0] d;
    wire [7:0] q;
    reg_parallel_load  uut (.clk(clk),.rst(rst),.en(en),.d(d),.q(q));
    always #5 clk = ~clk;
    initial begin
        $monitor("Time=%0t | rst=%b en=%b d=%h q=%h", $time, rst, en, d, q);
        clk = 0;
        rst = 1; en = 0; d = 8'hA5;
        #12; rst = 0;
        en = 1; d = 8'h34;
        #10;
        en = 0; d = 8'h77;
        #20;
        en = 1; d = 8'h0F;
        #15;
        rst = 1;
        #10;
        $stop;
    end
endmodule
