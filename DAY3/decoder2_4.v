module decoder2_4 (
  input  wire [1:0] in,
    input  wire       en,
  output reg  [3:0] out
);
    integer i;

    always @(*) begin
      for (i = 0; i < 4; i = i + 1)
            out[i] = (en && (in == i)) ? 1'b1 : 1'b0;
    end
endmodule
