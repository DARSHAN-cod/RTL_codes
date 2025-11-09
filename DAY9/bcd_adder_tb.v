`timescale 1ns/1ps
module bcd_adder_tb;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    bcd_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("bcd_adder_tb.vcd");
        $dumpvars(0, bcd_adder_tb);
        $monitor("Time=%0t | A=%d  B=%d  Cin=%b | Sum=%d  Cout=%b",
                  $time, a, b, cin, sum, cout);

        // Test 1: 5 + 3 = 8
        a = 4'd5; b = 4'd3; cin = 0;
        #10;

        // Test 2: 9 + 4 = 13 → BCD = 1 3
        a = 4'd9; b = 4'd4; cin = 0;
        #10;

        // Test 3: 7 + 8 = 15 → BCD = 1 5
        a = 4'd7; b = 4'd8; cin = 0;
        #10;

        // Test 4: 6 + 6 + cin = 13
        a = 4'd6; b = 4'd6; cin = 1;
        #10;

        // Test 5: 0 + 9 = 9
        a = 4'd0; b = 4'd9; cin = 0;
        #10;

        $finish;
    end

endmodule
