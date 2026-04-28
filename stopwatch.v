//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     //6-bits to represent the highest number 59
);
    wire [5:0] Q;
    wire [5:0] plus1;
    wire [5:0] next_val;
    wire is59;

    // Incrementer: Q + 1
    bit_adder adder (.A(Q), .B(6'b000000), .cin(1'b1), .S(plus1));

    // Comparator: Is it 59? (111011 in binary)
    assign is59 = (Q == 6'd59);

    // Structural Mux Logic for next state
    // Priority: If not enabled, hold Q. If 59, go to 0. Else plus1.
    assign next_val = (!en) ? Q : (is59 ? 6'b000000 : plus1);

    // 6-bit D-Flip-Flop Register Bank
    d_ff dff[5:0] (
        .clk(clk),
        .reset(rst),
        .D(next_val),
        .Q(Q)
    );

    assign state = Q;
endmodule
    





