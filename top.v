
module top(

    input [7:0] sw,
    output [5:0] led
   
);
     wire w1;
    light stair_inst(
        .downStairs(sw[0]),
        .upStairs(sw[1]),
        .stair_light(led[0])
    );
     adder half_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );
     full_adder fa0(
        .a(sw[4]),
        .b(sw[6]),
        .c(1'b0),
        .y(led[3]),
        .count(w1)
    );
     full_adder fa1(
        .a(sw[5]),
        .b(sw[7]),
        .c(w1),
        .y(led[4]),
        .count(led[5])
    );
endmodule