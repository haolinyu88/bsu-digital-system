`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2026 11:09:09 PM
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
     input [3:0] sw,
    input btnC,
    output [5:0] led
);
    

    // D Flip-Flop: sw[0] -> D, led[0] -> Q, led[1] -> ~Q
    D_FF dff (
        .D(sw[0]),
        .btnC(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    // JK Flip-Flop: sw[1] -> J, sw[2] -> K, led[2] -> Q, led[3] -> ~Q
    JK_FF jkff (
        .J(sw[1]),
        .K(sw[2]),
        .btnC(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );

    // T Flip-Flop: sw[3] -> T, led[4] -> Q, led[5] -> ~Q
    T_FF tff (
        .T(sw[3]),
        .btnC(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );


endmodule
