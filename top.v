module top(
    input [0:0] sw,
    input btnC,
    input btnU,
    output [9:0] led
);

    wire w = sw[0];
    wire clk = btnC;
    wire reset = btnU;

    wire z1, z2;
    wire [4:0] s1;
    wire [2:0] s2;

    one_hot_fsm oh(
        .w(w),
        .clk(clk),
        .reset(reset),
        .z(z1),
        .state(s1)
    );

    binary_fsm bin(
        .w(w),
        .clk(clk),
        .reset(reset),
        .z(z2),
        .state(s2)
    );

    assign led[0] = z1;
    assign led[1] = z2;

    assign led[6:2] = s1;
    assign led[9:7] = s2;

endmodule