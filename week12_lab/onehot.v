module one_hot_fsm(
    input w,
    input clk,
    input reset,
    output z,
    output [4:0] state
);

    wire A, B, C, D, E;
    wire Anext, Bnext, Cnext, Dnext, Enext;

    // 实例化 DFF（初始状态 A=1）
    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .reset(reset),
        .Q(A)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .reset(reset),
        .Q(B)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .reset(reset),
        .Q(C)
    );

    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .reset(reset),
        .Q(D)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .reset(reset),
        .Q(E)
    );

    // 输出状态
    assign state = {E, D, C, B, A};

    // 输出 z
    assign z = C | E;

    // Next state logic
    assign Anext = 1'b0;
    assign Bnext = (~w & A) | (~w & D) | (~w & E);
    assign Cnext = (~w & B) | (~w & C);
    assign Dnext = (w & A) | (w & B) | (w & C);
    assign Enext = (w & D) | (w & E);

endmodule