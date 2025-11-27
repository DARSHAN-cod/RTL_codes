module tb_up_down_counter;

reg clk;
reg reset;
reg load;
reg up_down;
reg [7:0] data;
wire [7:0] count;
up_down_counter uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .up_down(up_down),
    .data(data),
    .count(count)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    load = 0;
    up_down = 1;
    data = 8'd0;
    #10 reset = 0;
    data = 8'd20;
    load = 1;
    #10 load = 0;
    up_down = 1;   #40;
    up_down = 0;   #40;
    $stop;
end
initial begin
    $monitor("Time=%0t  reset=%b load=%b up_down=%b data=%d count=%d", 
             $time, reset, load, up_down, data, count);
end

endmodule
