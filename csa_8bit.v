module csa_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [7:0] C,
    output [7:0] Sum,
    output [7:0] Carry
);

    full_adder fa0(
    .a(A[0]),
    .b(B[0]),
    .cin(C[0]),
    .sum(Sum[0]),
    .cout(Carry[0])
);

    full_adder fa1(
    .a(A[1]),
    .b(B[1]),
    .cin(C[1]),
    .sum(Sum[1]),
    .cout(Carry[1])
);

    full_adder fa2(
    .a(A[2]),
    .b(B[2]),
    .cin(C[2]),
    .sum(Sum[2]),
    .cout(Carry[2])
);

    full_adder fa3(
    .a(A[3]),
    .b(B[3]),
    .cin(C[3]),
    .sum(Sum[3]),
    .cout(Carry[3])
);

    full_adder fa4(
    .a(A[4]),
    .b(B[4]),
    .cin(C[4]),
    .sum(Sum[4]),
    .cout(Carry[4])
);

    full_adder fa5(
    .a(A[5]),
    .b(B[5]),
    .cin(C[5]),
    .sum(Sum[5]),
    .cout(Carry[5])
);

    full_adder fa6(
    .a(A[6]),
    .b(B[6]),
    .cin(C[6]),
    .sum(Sum[6]),
    .cout(Carry[6])
);

    full_adder fa7(
    .a(A[7]),
    .b(B[7]),
    .cin(C[7]),
    .sum(Sum[7]),
    .cout(Carry[7])
);
endmodule
