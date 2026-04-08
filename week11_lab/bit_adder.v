`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 11:48:19 PM
// Design Name: 
// Module Name: bit_adder
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


module bit_adder(
input [2:0] A,
    output [2:0] S
);

    wire c1, c2;

    // Add 1 → LSB gets carry-in = 1
    full_adder fa0 (.a(A[0]), .b(1'b1), .c(1'b0), .y(S[0]), .count(c1));
    full_adder fa1 (.a(A[1]), .b(1'b0), .c(c1),   .y(S[1]), .count(c2));
    full_adder fa2 (.a(A[2]), .b(1'b0), .c(c2),   .y(S[2]), .count());

endmodule