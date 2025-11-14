module mux_tristate (
    input [3:0] d,
    input [1:0] sel,
    output y
);

    wire y0 = (sel == 2'b00) ? d[0] : 1'bz;
    wire y1 = (sel == 2'b01) ? d[1] : 1'bz;
    wire y2 = (sel == 2'b10) ? d[2] : 1'bz;
    wire y3 = (sel == 2'b11) ? d[3] : 1'bz;

    assign y = y0 | y1 | y2 | y3;

endmodule
