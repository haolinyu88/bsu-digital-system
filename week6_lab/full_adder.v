// Implement module called full_adder
module full_adder(
    input a, b, c,
    output y, count

);
    assign y = (a & !b & !c ) | (!a & !b & c ) | (a & b & c) | (!a & b & !c );  
    assign count = (a & c) | ( b & c) | ( a & b);  
endmodule