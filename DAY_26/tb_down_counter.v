
module tb_down_counter;
reg clk;
reg reset;
reg enable;
wire [7:0] count;
down_counter uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    enable = 0;   #10 
    reset = 0;
    enable = 1;   #100;
    enable = 0;   #40;

    $stop;
end

initial begin
    $monitor("Time=%0t | reset=%b enable=%b | count=%d",
             $time, reset, enable, count);
end

endmodule
