module tb_decoder3_8;
    reg  [2:0] in;
    reg        en;
    wire [7:0] out;
    integer i;
    decoder3_8 uut (.in(in), .en(en), .out(out));
    initial begin
      $dumpfile("decoder3_8.vcd");
      $dumpvars(0, tb_decoder3_8);
        $display("3:8 Decoder");
        en = 1;
        for (i = 0; i < 8; i = i + 1) begin
            in = i; #10;
          $display("en=%b in=%b | output=%b ",en,in,out,);
        end
      en=0;
      in = 3'b000;
      $display("en=%b in=%b | output=%b ",en,in,out,);
        $finish;
    end
endmodule
