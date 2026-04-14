module binary_fsm(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);

    wire y2, y1, y0;           // 当前状态
    wire Y2, Y1, Y0;           // 下一状态

    // DFF（初始 = 000 → A）
    dff dff0(
        .Default(1'b0),
        .D(Y0),
        .clk(clk),
        .reset(reset),
        .Q(y0)
    );

    dff dff1(
        .Default(1'b0),
        .D(Y1),
        .clk(clk),
        .reset(reset),
        .Q(y1)
    );

    dff dff2(
        .Default(1'b0),
        .D(Y2),
        .clk(clk),
        .reset(reset),
        .Q(y2)
    );

    assign state = {y2, y1, y0};

    // 输出 z（C=010, E=100）
    assign z = (~y2 & y1 & ~y0) | (y2 & ~y1 & ~y0);

    // Next state logic（用case写最安全）
    reg [2:0] next;

    always @(*) begin
        case ({y2,y1,y0})
            3'b000: next = (w) ? 3'b011 : 3'b001; // A
            3'b001: next = (w) ? 3'b011 : 3'b010; // B
            3'b010: next = (w) ? 3'b011 : 3'b010; // C
            3'b011: next = (w) ? 3'b100 : 3'b001; // D
            3'b100: next = (w) ? 3'b100 : 3'b001; // E
            default: next = 3'b000;
        endcase
    end

    assign Y2 = next[2];
    assign Y1 = next[1];
    assign Y0 = next[0];

endmodule