`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 11:45:18 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a, b, c,
    output y, count

);
    assign y = (a & !b & !c ) | (!a & !b & c ) | (a & b & c) | (!a & b & !c );  
    assign count = (a & c) | ( b & c) | ( a & b);  
endmodule
