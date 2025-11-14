// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module mux_tristate_tb;
    reg  [3:0] d;
    reg  [1:0] sel;
    wire y;

    mux_tristate uut(d, sel, y);
    initial begin
        $dumpvars;
        $dumpfile("mux.vcd");
       $monitor("time=%0t  d=%b  sel=%b  y=%b", $time, d, sel, y);
        d = 4'b0010; sel = 2'b00; #10;
        d = 4'b0010; sel = 2'b01; #10;
        d = 4'b0010; sel = 2'b10; #10;
        d = 4'b0010; sel = 2'b11; #10;
        $finish;
    end

endmodule
