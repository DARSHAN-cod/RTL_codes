// Code your design here
module reg_parallel_load (
    input clk,
    input rst,            
    input en,            
    input [7:0] d,  
    output reg [7:0] q);

  always @(posedge clk or posedge rst) 
    begin
    if (rst)
        q <= 0;
    else if (en)
        q <= d;          
    else
        q <= q;          
end

endmodule
