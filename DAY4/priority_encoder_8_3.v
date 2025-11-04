// Code your design here
module priority_encoder_8_3(
  input wire [7:0] in,
  output reg sel,
  output reg [3:0] out);
  always@(*)
    begin
      if(in[7])
        begin
          out = 3'b111;
          sel = 1;
        end
      else if(in[6])
        begin
          out = 3'b110;
          sel = 1;
        end
      else if(in[5])
        begin
          out = 3'b101;
          sel = 1;
        end
      else if(in[4])
        begin
          out = 3'b100;
          sel = 1;
        end
      else if(in[3])
        begin
          out = 3'b011;
          sel = 1;
        end
      else if(in[2])
        begin
          out = 3'b010;
          sel = 1;
        end
      else if(in[1])
        begin
          out = 3'b001;
          sel = 1;
        end
      else if(in[0]) 
        begin
          out = 3'b000;
          sel = 1;
        end
      else
        begin
          out = 3'b000;
          sel = 0;
        end
    end
endmodule
