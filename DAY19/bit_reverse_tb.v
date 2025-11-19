// Code your testbench here
// or browse Examples
module bit_reverse_tb;
  reg [7:0]data_in;
  wire [7:0]data_out;
  
  bit_reverse uut(.data_in(data_in),.data_out(data_out));
  
  initial begin
    $dumpvars(0,bit_reverse_tb);
    $dumpfile("bit_reverse.vcd");
    
    $monitor (" %d  | %b  |  %b ",$time,data_in,data_out);
    
    data_in=8'b10100011; #10;
    $display(" %d  | %b  |  %b ",$time,data_in,data_out);
    
    data_in=8'b10111000; #10;
    $display(" %d  | %b  |  %b ",$time,data_in,data_out);
    
    
    data_in=8'b11100110; #10;
    $display(" %d  | %b  |  %b ",$time,data_in,data_out);
    
    $finish;
  end
endmodule
    
