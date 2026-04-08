`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2026 12:03:31 AM
// Design Name: 
// Module Name: top
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


module top(
    input btnC,   // clock
    input btnU,   // reset
    output [6:0] led
);

    // Ripple counter
   

    ripple_Counter rc (
        .clk(btnC),
        .reset(btnU),
        .q0(led[0]),
        .q1(led[1]),
        .q2(led[2])
    );

    

    // Modulo counter
    wire [2:0] count;
    wire mod_out;

    mod6_Counter mc (
        .clk(btnC),
        .reset(btnU),
        .count(count),
        .out_clk(mod_out)
    );

    assign led[3] = count[0];
    assign led[4] = count[1];
    assign led[5] = count[2];
    assign led[6] = mod_out;

endmodule