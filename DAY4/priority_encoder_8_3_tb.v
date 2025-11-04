// Code your testbench here
// or browse Examples
module priority_encoder_8_3_tb;
  reg [7:0]in;
  wire sel;
  wire[2:0]out;
  
  priority_encoder_8_3 uut (.in(in),.sel(sel),.out(out));
  initial begin
    $dumpvars(1);
    $dumpfile("dump.vcd");
    $monitor("Time=%0t | in=%b | sel=%b| out=%b", $time, in,sel, out);
    in = 8'b00000000; #10;
    in = 8'b00000001; #10;
    in = 8'b00000010; #10;
    in = 8'b00000100; #10;
    in = 8'b00001000; #10;
    in = 8'b00010000; #10;
    in = 8'b00100000; #10;
    in = 8'b01000000; #10;
    in = 8'b10000000; #10;   
    $finish;
  end
endmodule

