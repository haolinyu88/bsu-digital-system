`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2026 12:00:14 AM
// Design Name: 
// Module Name: mod6_Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod6_Counter(

   input clk,
    input reset,
    output [2:0] count,
    output out_clk
);

    wire [2:0] next_count;
    wire [2:0] plus1;
    wire is5;

    // current state
    wire [2:0] Q;

    // adder
    bit_adder connect (.A(Q), .S(plus1));

    // comparator
    comparetor cmp (.A(Q), .eq5(is5));

    // next state logic
    assign next_count = (is5) ? 3'b000 : plus1;

    // DFFs for counter
    D_FF dff0 (.clk(clk), .reset(reset), .D(next_count[0]), .Q(Q[0]));
    D_FF dff1 (.clk(clk), .reset(reset), .D(next_count[1]), .Q(Q[1]));
    D_FF dff2 (.clk(clk), .reset(reset), .D(next_count[2]), .Q(Q[2]));

    assign count = Q;

    // output clock toggle
    wire out_next;
    wire out_q;

    assign out_next = is5 ^ out_q;

    D_FF outff (
        .clk(clk),
        .reset(reset),
        .D(out_next),
        .Q(out_q)
    );

    assign out_clk = out_q;

endmodule