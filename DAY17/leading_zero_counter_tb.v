module leading_zero_counter_tb;
    reg  [7:0] in;
    wire [3:0] count;
    leading_zero_counter dut (.in(in), .count(count));
    initial begin
        $display("time |    in    | count");

      in = 8'b0000_0000; #1; $display("%0t   | %b | %0d", $time, in, count);
      in = 8'b1000_0000; #1; $display("%0t   | %b | %0d", $time, in, count);
      in = 8'b0101_0000; #1; $display("%0t   | %b | %0d", $time, in, count);
 
        $finish;
    end
endmodule
