
module barrel_shift_tb;

    reg  [7:0] In;
    reg  [2:0] n;
    reg        Lr;
    wire [7:0] Out;

        barrel_shift uut (
        .In(In),
        .n(n),
        .Lr(Lr),
        .Out(Out)
    );

    initial begin
        $dumpfile("barrel_shift.vcd");
        $dumpvars(0, barrel_shift_tb);
      $display("Time\   tLr\   tShift\   tIn\  t\   tOut");
        $monitor("time = %t | Lr = %b | n = %b | In = %b | Output = %b",
                  $time, Lr, n, In, Out);
        In = 8'b10110011; Lr = 1; n = 1; #10;
        In = 8'b10110011; Lr = 1; n = 3; #10;

        In = 8'b11110000; Lr = 0; n = 2; #10;
        In = 8'b11110000; Lr = 0; n = 4; #10;

        In = 8'b00001111; Lr = 1; n = 7; #10;
        In = 8'b00001111; Lr = 0; n = 7; #10;
        $finish;
    end

endmodule
