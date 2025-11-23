// Code your design here
module jk_ff (
    input clk,
    input rst,   
    input j,
    input k,
    output reg q);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else begin
          case ({j,k})
                2'b00: q <= q;   // Hold
                2'b01: q <= 0;   // Reset
                2'b10: q <= 1;   // Set
                2'b11: q <= ~q;  // toggle
            endcase
        end
    end
endmodule
