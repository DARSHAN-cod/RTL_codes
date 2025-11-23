// Code your design here
module sr_ff (
    input clk,
    input rst,   
    input S,
    input R,
    output reg q);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else begin
            case ({S,R})
                2'b00: q <= q;   // Hold
                2'b01: q <= 0;   // Reset
                2'b10: q <= 1;   // Set
                2'b11: q <= 1'bx;// Invalid condition
            endcase
        end
    end
endmodule
