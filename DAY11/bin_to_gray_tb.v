// Code your testbench here
// or browse Examples

module bin_to_gray_tb;
  reg [3:0] bin;
  wire [3:0] gray;
  
  bin_to_gray uut (.bin(bin),.gray(gray));
  
  initial begin
    $dumpvars(0,bin_to_gray_tb);
    $dumpfile("binary.vcd");
    $monitor(" time=%d | input_binary=%b | output_gray=%b",$time,bin,gray);
    
    bin=4'b1010; #10;
    bin=4'b1001; #10;
    bin=4'b1000; #10;
    bin=4'b0110; #10;
    bin=4'b0101; #10;
    #60 $finish;
  end
endmodule
