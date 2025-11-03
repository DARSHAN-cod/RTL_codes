// Code your testbench here
`timescale 1ns / 1ps
module tb_decoder4_16;
    reg  [3:0] in;
    reg        en;
    wire [15:0] out;
    integer i;  
    decoder4_16 uut (.in(in),.en(en),.out(out));
    initial begin
      $dumpfile("decoder4_16.vcd");
      $dumpvars(0, tb_decoder4_16);
        $display("4-to-16 Decoder:");
        en = 0; in = 4'b0000; #10;
      $display("enable=%b input=%b | output=%b", en, in, out);
        en = 1;
        for (i = 0; i < 16; i = i + 1) begin
            in = i; #10;
          $display("Enable=%b input=%b | output=%b", en, in, out);
        end
        $finish;
    end
endmodule
