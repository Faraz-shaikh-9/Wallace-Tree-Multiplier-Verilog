module wallace_4x4(
    input  [3:0] A,
    input  [3:0] B,
    output [7:0] Product
);

    wire [3:0] pp0, pp1, pp2, pp3;

    wire [7:0] pp0_ext;
    wire [7:0] pp1_shift;
    wire [7:0] pp2_shift;
    wire [7:0] pp3_shift;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    assign pp0_ext   = {4'b0000, pp0};

    assign pp1_shift = ({4'b0000, pp1} << 1);

    assign pp2_shift = ({4'b0000, pp2} << 2);

    assign pp3_shift = ({4'b0000, pp3} << 3);


    wire [7:0] sum1;
    wire [7:0] carry1;

    csa_8bit csa1(
    .A(pp0_ext),
    .B(pp1_shift),
    .C(pp2_shift),
    .Sum(sum1),
    .Carry(carry1)
);

    wire [7:0] sum2;
    wire [7:0] carry2;
    wire [7:0] carry1_shift;
    assign carry1_shift = carry1 << 1;

    csa_8bit csa2(
    .A(sum1),
    .B(carry1_shift),
    .C(pp3_shift),
    .Sum(sum2),
    .Carry(carry2)
);

    wire [7:0] carry2_shift;
    wire final_cout;
    assign carry2_shift = carry2 << 1;

    cla_8bit final_add(
    .A(sum2),
    .B(carry2_shift),
    .Cin(1'b0),
    .Sum(Product),
    .Cout(final_cout)
);
endmodule