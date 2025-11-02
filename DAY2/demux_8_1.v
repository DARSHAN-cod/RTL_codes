// Code your design here
// Code your design here
module mux_8_1(d,s0,s1,s2,y);
  input d,s0,s1,s2;
  output reg [7:0]y;
  
  always @(s0,s1,s2)
    begin
    case ({s0,s1,s2})
      
        
        3'b000:y= 8'b00000001;
        3'b001:y= 8'b00000010;
        3'b010:y= 8'b00000100;
        3'b011:y=  8'b00001000;
        3'b100:y= 8'b00010000;
        3'b101:y= 8'b00100000;
        3'b110:y= 8'b01000000;
        3'b111:y= 8'b10000000;
        
        default:y= 0;
      
        endcase
    end
endmodule
