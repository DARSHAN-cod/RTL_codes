// Code your design here
module parity_gen(
    input  [3:0] data,
    output       even,
    output       odd
);

    assign even= ^data;         
    assign odd= ~even;  
endmodule
