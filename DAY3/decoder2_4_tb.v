module tb_decoder2_4;
  reg  [1:0] in;
    reg        en;
  wire [3:0] out;
    integer i;
    decoder2_4 uut (.in(in), .en(en), .out(out));
    initial begin
      $dumpfile("decoder2_4.vcd");
      $dumpvars(0, tb_decoder2_4);
      $display("2:4 Decoder");
        en = 1;
      for (i = 0; i < 4; i = i + 1) begin
            in = i; #10;
          $display("en=%b in=%b | output=%b ",en,in,out,);
        end
      en=0;
      in = 2'b00;
      $display("en=%b in=%b | output=%b ",en,in,out,);
        $finish;
    end
endmodule
