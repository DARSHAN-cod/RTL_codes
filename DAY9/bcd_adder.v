// Code your design here
module bcd_adder(
    input  [3:0] a, b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire [4:0] bin_sum;   // 5-bit sum from binary addition
    wire       correction; 
    wire [4:0] corrected_sum;

    // Step 1: Binary addition
    assign bin_sum = a + b + cin;

    // Step 2: Check for correction
    assign correction = (bin_sum > 9);

    // Step 3: Add 6 if needed
    assign corrected_sum = correction ? (bin_sum + 6) : bin_sum;

    // Final outputs
    assign sum  = corrected_sum[3:0];
    assign cout = corrected_sum[4];

endmodule
