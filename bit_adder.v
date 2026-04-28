`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2026 07:33:49 AM
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

    input [5:0] A,
    input [5:0] B,
    input cin,
    output [5:0] S
);
    wire [5:0] carry;

    full_adder fa0 (.a(A[0]), .b(B[0]), .c(cin),      .y(S[0]), .count(carry[0]));
    full_adder fa1 (.a(A[1]), .b(B[1]), .c(carry[0]), .y(S[1]), .count(carry[1]));
    full_adder fa2 (.a(A[2]), .b(B[2]), .c(carry[1]), .y(S[2]), .count(carry[2]));
    full_adder fa3 (.a(A[3]), .b(B[3]), .c(carry[2]), .y(S[3]), .count(carry[3]));
    full_adder fa4 (.a(A[4]), .b(B[4]), .c(carry[3]), .y(S[4]), .count(carry[4]));
    full_adder fa5 (.a(A[5]), .b(B[5]), .c(carry[4]), .y(S[5]), .count(carry[5]));
endmodule