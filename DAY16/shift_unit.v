module shift_unit (
    input  [7:0]  data_in,     
    input  [2:0]  shift,   // Shift (0–7)
    input  [1:0]  mode,        // 00=SLL, 01=SRL, 10=SRA
    output reg [7:0] data_out  
);

    always @(*) begin
        case (mode)
            2'b00: data_out = data_in << shift;          
            2'b01: data_out = data_in >> shift;               
            2'b10: data_out = $signed(data_in) >>> shift;         
            default: data_out = 8'b0;
        endcase
    end

endmodule
