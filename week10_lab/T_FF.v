`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2026 10:23:39 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF( input T, input btnC, output  Q, output NotQ


    );
    
    wire q, notq;
    wire w1;
    assign w1 = ( T ) ? ~q : q;
    
    D_FF connect( .D(w1), .Q(q), .NotQ(notq), .btnC(btnC));
    
    assign Q = q;
    assign NotQ = notq;
    
    
    
endmodule
