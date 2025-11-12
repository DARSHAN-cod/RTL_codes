// Code your testbench here
// or browse Examples
module tb_comparator_8_bit;
    reg [7:0] A, B;
    wire greater, equal, less;
  comparator_8_bit uut (.A(A),.B(B),.greater(greater),.equal(equal),.less(less));
    initial begin
        $dumpfile("comparator_8_bit.vcd");
        $dumpvars(0, tb_comparator_8_bit);
        $monitor("%b  %b    | %b  %b  %b", A, B,greater,equal,less);
        $display("A          B          | Greater Equal Less");
        A=8'b00000000; B=8'b00000000; #10;
        A=8'b11110000; B=8'b11100000; #10;
        A=8'b00110011; B=8'b10110011; #10;
        A=8'b01010101; B=8'b01010101; #10;
        A=8'b11111111; B=8'b00000001; #10;
        $finish;
    end
endmodule
