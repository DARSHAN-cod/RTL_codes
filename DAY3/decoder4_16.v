// Code your design here
module decoder4_16 (
  input wire [3:0]in,
  input wire en,
  output reg [15:0]out);
  
  always@(*)
    begin
      if(en)
        begin
          out = 16'b0;
          out[in] = 1'b1;
        end
      else
        begin
          out = 16'b0;
        end
    end
endmodule
