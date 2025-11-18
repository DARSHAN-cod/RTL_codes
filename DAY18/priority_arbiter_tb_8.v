module priority_arbiter_tb_8;
    reg  [7:0] req;
    wire [7:0] gnt;

    priority_arbiter_8 uut (.req(req), .gnt(gnt));

    initial begin
        $monitor("Time=%0t | req=%b | gnt=%b", $time, req, gnt);

        req = 8'b00000000; #10;
        req = 8'b10000000; #10;
        req = 8'b01000000; #10;
        req = 8'b00000001; #10;
        req = 8'b11111111; #10;  // highest priority = req0
        req = 8'b01111111; #10;
        req = 8'b00110000; #10;
        req = 8'b00000000; #10;

        $finish;
    end
endmodule
