// Code your design here
module bit_reverse(
  input wire [7:0]data_in,
  output wire [7:0]data_out);
  genvar i;
  generate
    for(i=0;i<8;i++)
      begin
        assign data_out[i] = data_in[7-i];
      end
    endgenerate
endmodule
