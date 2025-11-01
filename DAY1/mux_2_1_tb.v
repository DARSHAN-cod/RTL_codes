module tb_mux_2_1;
  reg a,b,sel;
  wire y;
  
  mux_2_1 uut(.a,.b,.sel,.y);
  
  initial begin 
    $dumpfile ("mux_2_1.vcd");
               $dumpvars (0, tb_mux_2_1);
    $display ("A B | SEL | Y");
    $display ("-------------");
    
    a=0 ; b=0; sel=0; #10;
        $display ("%b %b | %b | %b",a,b,sel,y);
    a=0 ; b=1; sel=0; #10;
        $display ("%b %b | %b | %b",a,b,sel,y);
    a=1 ; b=0; sel=1;  #10;
        $display ("%b %b | %b | %b",a,b,sel,y);
    a=1 ; b=1; sel=1; #10;
        $display ("%b %b | %b | %b",a,b,sel,y);
    $finish;
  end
endmodule
