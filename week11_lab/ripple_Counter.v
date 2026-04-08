`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 11:54:26 PM
// Design Name: 
// Module Name: ripple_Counter
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


module ripple_Counter(
    input clk,
    input reset,
    output q0, q1, q2
);

    // T = 1 always
    T_FF tff0 (.clk(clk), .reset(reset), .T(1'b1), .Q(q0));
    T_FF tff1 (.clk(q0),  .reset(reset), .T(1'b1), .Q(q1));
    T_FF tff2 (.clk(q1),  .reset(reset), .T(1'b1), .Q(q2));

endmodule