module up_down_counter (
    input clk,
    input reset,
    input load,
    input up_down,
    input [7:0] data,
    output reg [7:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 8'd0;
    else if (load)
        count <= data;
    else if (up_down)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule
