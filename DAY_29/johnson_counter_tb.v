module johnson_counter_tb;
    reg clk;
    reg reset;
    wire [3:0] q;
    johnson_counter uut(.clk(clk),.reset(reset),.q(q));
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
      $dumpfile("johnson_counter.vcd");
      $dumpvars(0, johnson_counter_tb);
        $monitor("Time=%0t | reset=%b | q=%b", $time, reset, q);
        // Reset → Start at 1000
        reset = 1;
        #10;
        reset = 0;
        // Observe next states
        repeat(10) #10;
        $finish;
    end
endmodule
