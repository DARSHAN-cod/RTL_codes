// Code your testbench here
// or browse Examples
module tb_demux_4_1;
  reg din;
  reg [1:0]sel;
  reg [3:0]y;
  
  demux_4_1 uut(.din(din),.sel(sel),.y(y));
  
  initial begin
    
    $monitor("Time=%t | din=%b | sel=%b | y=%b",$time,din,sel,y);
    $dumpvars(1);
    $dumpfile("demux_4_1.vcd");
    
    din=1;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    
    din =0;
    sel =2'b10;  #10;
    
    $finish;
  end
endmodule
