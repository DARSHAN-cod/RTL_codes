// Code your design here
module demux_2_1(input din,input sel,output reg [1:0]y);
  always@(*)
    begin
      y=2'b00;
      case(sel)
        2'b0:y[0] =din;
        2'b1:y[1] =din;
      endcase
    end
endmodule
