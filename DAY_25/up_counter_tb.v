module up_counter_tb;
    reg clk;
    reg rst;
    wire [7:0] count;
    up_counter  uut (.clk(clk),.rst(rst),.count(count));
    always #5 clk = ~clk;
    initial begin
        $monitor("Time=%0t | rst=%b | count=%d", $time, rst, count);
        clk = 0;
        rst = 1; #12;
        rst = 0; #60;
        rst = 1; #10;
        rst = 0; #40;
        $stop;
    end
endmodule
