// Code your design here
module seven_segment(
  input  [3:0] bcd_in,
  output reg [6:0] seg_out     
);

always @(*) begin
  case(bcd_in)
        4'd0: seg_out = 7'b0000001;
        4'd1: seg_out = 7'b1001111;
        4'd2: seg_out = 7'b0010010;
        4'd3: seg_out = 7'b0000110;
        4'd4: seg_out = 7'b1001100;
        4'd5: seg_out = 7'b0100100;
        4'd6: seg_out = 7'b0100000;
        4'd7: seg_out = 7'b0001111;
        4'd8: seg_out = 7'b0000000;
        4'd9: seg_out = 7'b0000100;
        default: seg_out = 7'b1111111;   
    endcase
end

endmodule
