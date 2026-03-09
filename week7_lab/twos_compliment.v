module twos_compliment(
    input [7:0] A,
    
    output [7:0] Y
);
    wire[7:0] w1;
    wire [7:0] sum;
    wire[7:0] carry;
    
    

full_adder two1(
    .A(A[0]), .B(1'b1), .Cin(1'b0), .Sum(sum[0]), .Cout(carry[0])
    );
full_adder tow2(
    .A(A[1]), .B(1'b1), .Cin(carry[0]), .Sum(sum[1]), .Cout(carry[1])
    );    
full_adder tow3(
    .A(A[2]), .B(1'b1), .Cin(carry[1]), .Sum(sum[2]), .Cout(carry[2])
    );    
full_adder tow4(
    .A(A[3]), .B(1'b1), .Cin(carry[2]), .Sum(sum[3]), .Cout(carry[3])
    );    
full_adder tow5(
    .A(A[4]), .B(1'b1), .Cin(carry[3]), .Sum(sum[4]), .Cout(carry[4])
    );           
full_adder tow6(
    .A(A[5]), .B(1'b1), .Cin(carry[4]), .Sum(sum[5]), .Cout(carry[5])
    );    
full_adder tow7(
    .A(A[6]), .B(1'b1), .Cin(carry[5]), .Sum(sum[6]), .Cout(carry[6])
    );        
 full_adder tow8(
    .A(A[7]), .B(1'b1), .Cin(carry[6]), .Sum(sum[7]), .Cout(carry[7])
    );       
assign Y = ~sum;    
    
endmodule