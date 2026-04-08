`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 11:45:18 PM
// Design Name: 
// Module Name: comparetor
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


module comparetor( input [2:0] A,
                   output eq5 

    );
    wire w1, w2;
    
    assign w1 = A[2] & ~ A[1];
    assign w2 = w1 & A[0];
    assign eq5 = w2;
endmodule
