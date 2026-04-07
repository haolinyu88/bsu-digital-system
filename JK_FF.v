module JK_FF( input J, input K, input btnC, output Q, output NotQ
);

wire w1;
wire q, notq;

assign w1 = ( J & notq ) | ( ~K & q );



D_FF connect( .btnC(btnC), .D(w1), .Q(q), .NotQ(notq));

assign Q = q;
assign NotQ = notq;
endmodule