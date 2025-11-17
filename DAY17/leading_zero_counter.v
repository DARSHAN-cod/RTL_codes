module leading_zero_counter(
    input  [7:0] in,
    output reg [3:0] count
);

    integer i;
    reg stop;
    always @(*) begin
        count = 0;
        stop  = 0;

        for(i = 7; i >= 0; i = i - 1) begin
            if (!stop) begin
                if(in[i] == 1'b0)
                    count = count + 1;
                else
                    stop = 1;  
            end
        end
    end

endmodule
