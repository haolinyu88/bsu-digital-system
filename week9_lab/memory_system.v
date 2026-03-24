module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
    );
    wire [7:0]s1, s2, s3, s4;
    wire w1, w2, w3, w4;
    
    assign w1 = ( addr == 2'b00 ) ? store : 1'b0;
    assign w2 = ( addr == 2'b01 ) ? store : 1'b0;
    assign w3 = ( addr == 2'b10 ) ? store : 1'b0;
    assign w4 = ( addr == 2'b11 ) ? store : 1'b0;
    
    byte_memory connect1(.store(w1), .data(data), .memory(s1)); 
     byte_memory connect2(.store(w2), .data(data), .memory(s2)); 
      byte_memory connect3(.store(w3), .data(data), .memory(s3)); 
       byte_memory connect4(.store(w4), .data(data), .memory(s4)); 
     
    always @(*) begin
        case(addr)
            2'b00 : memory = s1;
            2'b01 : memory = s2;
            2'b10 : memory = s3;
            2'b11 : memory = s4;
        endcase
     end
        
        
    
    endmodule