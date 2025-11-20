// Code your testbench here
// or browse Examples
module seven_segment_tb;
  reg  [3:0] bcd_in;
  wire [6:0] seg_out;

seven_segment uut (.bcd_in(bcd_in),.seg_out(seg_out));
initial begin
  $display("Time  BCD  Segment");
  $monitor("%0t  %b  %b", $time, bcd_in, seg_out);
    bcd_in = 4'd0; #10;
    bcd_in = 4'd1; #10;
    bcd_in = 4'd2; #10;
    bcd_in = 4'd3; #10;
    bcd_in = 4'd4; #10;
    bcd_in = 4'd5; #10;
    bcd_in = 4'd6; #10;
    bcd_in = 4'd7; #10;
    bcd_in = 4'd8; #10;
    bcd_in = 4'd9; #10;
    bcd_in = 4'd12; #10;
    $finish;
end
endmodule
