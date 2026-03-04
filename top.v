module top(
    input [9:0] sw,
    output [13:0] led
);

/* half subtractor */

half_sub HS(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);

/* ones compliment */

ones_compliment OC(
    .A(sw[5:2]),
    .B(sw[9:6]),
    .S(led[5:2])
);

/* twos compliment */

twos_compliment TC(
    .A(sw[9:2]),
    .Y(led[13:6])
);

endmodule