module mux_tb;
    reg  [3:0] d;
    reg  [1:0] sel;

    wire y_if;
    wire y_assign;
    wire y_case;

    mux_ifelse u1 (.d(d), .sel(sel), .y(y_if));
    mux_assign u2 (.d(d), .sel(sel), .y(y_assign));
    mux_case   u3 (.d(d), .sel(sel), .y(y_case));

    initial begin
        $dumpvars;
        $dumpfile("mux.vcd");

        $monitor("TIME=%0t | D=%b SEL=%b | IF=%b ASSIGN=%b CASE=%b",
                 $time, d, sel, y_if, y_assign, y_case);

        d = 4'b1010; sel = 2'b00; #10;
        d = 4'b1010; sel = 2'b01; #10;
        d = 4'b1010; sel = 2'b10; #10;
        d = 4'b1010; sel = 2'b11; #10;

        $finish;
    end
endmodule
