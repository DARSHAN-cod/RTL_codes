// Code your testbench here
// or browse Examples
module tb_demux_2_1;
  reg din;
  reg sel;
  reg [1:0]y;
  
  demux_2_1 uut(.din(din),.sel(sel),.y(y));
  
  initial begin
    
    $monitor("Time=%t | din=%b | sel=%b | y=%b",$time,din,sel,y);
    $dumpvars(1);
    $dumpfile("demux_2_1.vcd");
    
    din=1;
    sel = 1'b0; #10;
    sel = 1'b1; #10;
    
    din =0;
    sel =1'b1;  #10;
    
    $finish;
  end
endmodule
