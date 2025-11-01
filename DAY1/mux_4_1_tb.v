`timescale 1ns/1ps
module tb_mux_4_1;
  reg [3:0]d;
  reg [1:0]sel;
  wire y;
  
  mux_4_1 uut(.d(d),.sel(sel),.y(y));
 
  initial begin 
    $dumpfile ("mux_4_1.vcd");
    $dumpvars (0, tb_mux_4_1);
    $display ("D0 D1 D2 D3 | SEL | Y");
    $display ("---------------------");
  
    d=4'b1010;
    sel=2'b00; #10;
    $display ("%b %b %b %b | %b | %b",d[0],d[1],d[2],d[3],sel,y);
    sel=2'b01; #10;
        $display ("%b %b %b %b | %b | %b",d[0],d[1],d[2],d[3],sel,y);
    sel=2'b10;  #10;
        $display ("%b %b %b %b | %b | %b",d[0],d[1],d[2],d[3],sel,y);
    sel=2'b11; #10;
        $display ("%b %b %b %b | %b | %b",d[0],d[1],d[2],d[3],sel,y);
    $finish;
  end
endmodule
