module shift_unit_tb;
    reg  [7:0] data_in;
    reg  [2:0] shift;
    reg  [1:0] mode;
    wire [7:0] data_out;

    shift_unit uut (.data_in(data_in),.shift(shift),.mode(mode),.data_out(data_out)
    );
    initial begin
        $dumpfile("shift_unit.vcd");
        $dumpvars(0, shift_unit_tb);
        $monitor("TIME=%0t | mode=%b | data_in=%b | shift=%d | data_out=%b",
                  $time, mode, data_in, shift, data_out);
        data_in   = 8'b0011_1100;  
        shift = 3;
        mode      = 2'b00;  // SLL
        #10;
        data_in   = 8'b1011_0001;
        shift = 2;
        mode      = 2'b01;  // SRL
        #10;
        data_in   = 8'b1101_0000;  // Negative number in signed form
        shift = 2;
        mode      = 2'b10;  // SRA
        #10;
        data_in   = 8'b1000_1111;
        shift = 0;
        mode      = 2'b10;  // SRA
        #10;
        $finish;
    end
endmodule
