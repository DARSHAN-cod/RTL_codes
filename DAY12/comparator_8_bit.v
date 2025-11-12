// Code your design here
module comparator_8_bit (
    input  [7:0] A, B,
    output reg greater,
    output reg equal,
    output reg less
);
    always @(*) begin
        if (A > B) begin
            greater=1; equal=0; less=0;
        end
        else if (A == B) begin
            greater=0; equal=1; less=0;
        end
        else begin
            greater=0; equal=0; less=1;
        end
    end
endmodule
