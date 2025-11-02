// Code your testbench here
// or browse Examples
module tb_demux_8_1;
  reg din;
  reg [2:0]sel;
  reg [7:0]y;
  
  demux_8_1 uut(.din(din),.sel(sel),.y(y));
  
  initial begin
    
    $monitor("Time=%t | din=%b | sel=%b | y=%b",$time,din,sel,y);
    $dumpvars(1);
    $dumpfile("demux_8_1.vcd");
    
    din=1;
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    
    din =0;
    sel =3'b110;  #10;
    
    $finish;
  end
endmodule
