// Code your testbench here
// or browse Examples

module gray_to_bin_tb;
  reg [3:0] gray;
  wire [3:0] bin;
  
  gray_to_bin uut (.gray(gray),.bin(bin));
  
  initial begin
    $dumpvars(0,gray_to_bin_tb);
    $dumpfile("gray.vcd");
    $monitor(" time=%d | input_gray=%b | output_bin=%b",$time,gray,bin);
    
    gray=4'b1010; #10;
    gray=4'b1001; #10;
    gray=4'b1000; #10;
    gray=4'b0110; #10;
    gray=4'b0101; #10;
    #60 $finish;
  end
endmodule
