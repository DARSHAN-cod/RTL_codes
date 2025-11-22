module tff_mode_tb;
    reg clk;
    reg rst;
    reg t;
    wire q;
    tff_mode uut (.clk(clk),.rst(rst),.t(t),.q(q));
    always #5 clk = ~clk;
    initial begin
      $dumpfile("tff_mode_tb.vcd");
      $dumpvars(0, tff_mode_tb);
        $monitor("TIME=%0t | clk=%b rst=%b t=%b q=%b",
                    $time, clk, rst, t, q);
        clk = 0;
        rst = 1;
        t   = 0;
        // Reset active
        #10 rst = 0;
        // Test 1: Toggle mode (t = 1)
        #10 t = 1;   // q toggles at each posedge
        #20 t = 1;
        #20 t = 1;
        // Test 2: Hold mode (t = 0)
        #20 t = 0;   // q holds previous value
        #20 t = 1;   // toggle again
        // Test 3: Mix toggles
        #10 t = 0;
        #10 t = 1;
        #10 t = 0;
        #20 $finish;
    end
endmodule
