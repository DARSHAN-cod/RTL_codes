module mux_2_1(input a,b,sel,output reg y);
  always@(*)
    begin
      y=sel?a:b;
    end
endmodule
