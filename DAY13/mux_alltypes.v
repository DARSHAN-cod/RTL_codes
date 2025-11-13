module mux_assign(
  input [3:0]d,
  input [1:0]sel,
  output y);
  
  assign y = (sel==2'b00) ? d[0] : (sel==2'b01) ? d[1] : (sel==2'b10) ? d[2] :d[3];
endmodule


module mux_ifelse(
  input [3:0]d,
  input [1:0]sel,
  output reg y);
  
  always@(*) begin
    if(sel==2'b00)
      y=d[0];
    else if (sel==2'b01)
      y=d[1];
    else if (sel==2'b10)
      y=d[2];
    else 
      y=d[3];
  end
endmodule


module mux_case(
  input [3:0]d,
  input [1:0]sel,
  output reg y);
  
  always@(*) begin
    case(sel)
      2'b00 :y=d[0];
      2'b01 :y=d[1];
      2'b10 :y=d[2];
      2'b11 :y=d[3];
    endcase
  end
endmodule
