`timescale 1ns / 1ps


module v9(
    input [7:0] A, B,                
    input [2:0] sel,
    output [7:0] out, 
    output c_out 
);

    reg [7:0] res;
    wire [8:0] tmp;
    assign out = res; 
    assign tmp = {1'b0,A} + {1'b0,B};
    assign c_out = tmp[8]; 
    always @(*)
    begin
        case(sel)
            3'b000: 
               res = A + B ; 
            3'b001: 
               res = A + 1'b1;
            3'b010: 
               res = A - B;
            3'b011: 
               res = A ^ B;
            3'b100: 
               res = A | B;
            3'b101: 
               res = A & B ;      
            default: res = 0; 
        endcase
    end
endmodule
