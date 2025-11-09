module adder_subtractor_4bit (
    input [3:0] A, B,
    input M,                // Mode: 0 = Add, 1 = Subtract
    output [3:0] SUM,
    output Cout
);
    wire [3:0] B_xor;       // XORed version of B
    wire C0, C1, C2, C3;

    // XOR gates to control addition or subtraction
    assign B_xor = B ^ {4{M}};   // When M=1, invert B; else pass as-is

    // Ripple Carry Adder logic
    full_adder fa0 (A[0], B_xor[0], M,   SUM[0], C0);
    full_adder fa1 (A[1], B_xor[1], C0,  SUM[1], C1);
    full_adder fa2 (A[2], B_xor[2], C1,  SUM[2], C2);
    full_adder fa3 (A[3], B_xor[3], C2,  SUM[3], Cout);

endmodule

module full_adder (
    input A, B, Cin,
    output Sum, Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule
