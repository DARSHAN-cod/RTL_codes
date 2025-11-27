module down_counter (
    input clk,
    input reset,
    input enable,
    output reg [7:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 8'd255;      // start from max or any desired value
    else if (enable)
        count <= count - 1;   // count down
end

endmodule
