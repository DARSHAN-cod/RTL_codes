module decoder3_8 (
    input  wire [2:0] in,
    input  wire       en,
    output reg  [7:0] out
);
    integer i;

    always @(*) begin
        for (i = 0; i < 8; i = i + 1)
            out[i] = (en && (in == i)) ? 1'b1 : 1'b0;
    end
endmodule
