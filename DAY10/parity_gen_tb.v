// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module parity_gen_tb;

    reg  [3:0] data;
    wire even;
    wire odd;

    parity_gen uut (
        .data(data),
        .even(even),
        .odd(odd)
    );

    initial begin
        $monitor("Time=%0t | data=%b | even_parity=%b | odd_parity=%b",
                  $time, data, even, odd);

        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0101; #10;
        data = 4'b1111; #10;

        $finish;
    end

endmodule
