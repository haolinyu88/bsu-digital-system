module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S
);

wire c1,c2,c3,c4;
wire [3:0] sum;

full_adder FA0(A[0],B[0],1'b0,sum[0],c1);
full_adder FA1(A[1],B[1],c1,sum[1],c2);
full_adder FA2(A[2],B[2],c2,sum[2],c3);
full_adder FA3(A[3],B[3],c3,sum[3],c4);

/* end-around carry */

assign S = sum + c4;

endmodule