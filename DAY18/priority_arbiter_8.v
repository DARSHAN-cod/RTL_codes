module priority_arbiter_8 (
    input  wire [7:0] req,
    output wire [7:0] gnt
);
    assign gnt = req & ~(req - 1); 
endmodule
