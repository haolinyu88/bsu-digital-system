module D_FF( input D, input btnC, output reg Q, output NotQ
);

    initial begin
        Q <= 0;
     end

 always @(posedge btnC) begin
    Q <= D;
    end
 
 assign NotQ = ~Q;


endmodule