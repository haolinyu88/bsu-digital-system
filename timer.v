//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);
    wire [5:0] Q;
    wire [5:0] minus1;
    wire [5:0] next_count;
    wire [5:0] final_D;
    wire isZero;

    // Decrementer: Q + 63 (equivalent to Q - 1)
    bit_adder subtractor (.A(Q), .B(6'b111111), .cin(1'b0), .S(minus1));

    assign isZero = (Q == 6'b000000);

    // Logic: If en and not zero, take minus1, else hold Q
    assign next_count = (en && !isZero) ? minus1 : Q;

    // Load Mux: Priority over the counter logic
    assign final_D = (load) ? load_value : next_count;

    d_ff dff[5:0] (
        .clk(clk),
        .reset(rst),
        .D(final_D),
        .Q(Q)
    );

    assign state = Q;
endmodule