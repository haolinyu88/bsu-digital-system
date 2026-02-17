<<<<<<< HEAD
// Implement top level module
module top(
    input[6:0] sw,
    output[1:0] led
);
    circuit_a connect (
        .A(sw[0]),
        .B(sw[1]),
        .C(sw[2]),
        .D(sw[3]),
        .Y(led[0])
     );
     
     circuit_b connect2 (
            .A(led[0]),
            .B(sw[4]),
            .C(sw[5]),
            .D(sw[6]),
            .Y(led[1])
      );
     
        

endmodule 
=======
// Implement top level module
module top(
    input[6:0] sw,
    output[1:0] led
);
    circuit_a connect (
        .A(sw[0]),
        .B(sw[1]),
        .C(sw[2]),
        .D(sw[3]),
        .Y(led[0])
     );
     
     circuit_b connect2 (
            .A(led[0]),
            .B(sw[4]),
            .C(sw[5]),
            .D(sw[6]),
            .Y(led[1])
      );
     
        

endmodule 
>>>>>>> 86b9072c1b25f34a6aea4fb553f48766c459d600
    