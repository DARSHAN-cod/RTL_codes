// Code your design here
module priority_encoder_4_2(
  input wire [3:0] in,
  output reg sel,
  output reg [1:0] out);
  always@(*)
    begin
      if(in[3])
        begin
          out = 2'b11;
          sel = 1;
        end
      else if(in[2])
        begin
          out = 2'b10;
          sel = 1;
        end
      else if(in[1])
        begin
          out = 2'b01;
          sel = 1;
        end
      else if(in[0]) 
        begin
          out = 2'b00;
          sel = 1;
        end
      else
        begin
          out = 2'b00;
          sel = 0;
        end
    end
endmodule
