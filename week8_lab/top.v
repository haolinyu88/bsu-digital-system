module mux(
    input [3:0]A, [3:0]B, [3:0]C, [3:0]D, 
    input Enable,
    input [1:0]sel,
    output [3:0] Y
    );
    
    assign Y = Enable ? (sel == 2'b00 ? A :
                              sel == 2'b01 ? B :
                              sel == 2'b10 ? C :
                              sel == 2'b11 ? D : 4'b0000
                              ) : 4'b0000; 
    

endmodule

module demux( 
    input[3:0] a,
    input [1:0]sel,
    input Enable,
    output [3:0]y0, 
           [3:0]y1, 
           [3:0]y2, 
           [3:0]y3
);
assign y0 = Enable ? (sel == 2'b00 ? a : 0) : 4'b0000;
assign y1 = Enable ? (sel == 2'b01 ? a : 0) : 4'b0000;
assign y2 = Enable ? (sel == 2'b10 ? a : 0) : 4'b0000;
assign y3 = Enable ? (sel == 2'b11 ? a : 0) : 4'b0000;

             
               
endmodule               
module top(
    input [15:0]sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );   
    wire[1:0] w1;
    wire[1:0] w2;
    wire[3:0] w3;
    assign w1 = {btnU, btnL};
    assign w2 = {btnR, btnD};
    
mux connect(
    .A(sw[3:0]),
    .B(sw[7:4]),
    .C(sw[11:8]),
    .D(sw[15:12]),
    .Enable(btnC),
    .sel(w1),
    .Y(w3)
    );
    
demux connect2(
    .a(w3),
    .sel(w2),
    .Enable(btnC),
    .y0(led[3:0]),
    .y1(led[7:4]),
    .y2(led[11:8]),
    .y3(led[15:12])
    );           
       
endmodule 