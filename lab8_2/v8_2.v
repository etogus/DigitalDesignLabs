`timescale 1ns / 1ps

module cmp_bitslice(
    input A,
    input B,
    input LT_I, 
    input EQ_I, 
    input GT_I,
    output LT_0, 
    output EQ_0, 
    output GT_0
    );

assign GT_0 = (A & ~B) | (~(A ^ B) & GT_I);
assign EQ_0 = EQ_I & ((A & B) | (~A & ~B));
assign LT_0 = (B & ~A) | (~(A ^ B) & LT_I);
    
endmodule    

module v8_2(
    input [3:0] A,
    input [3:0] B, 
    output LT_0, 
    output EQ_0, 
    output GT_0
    );
    
wire [3:0] GT_int;
wire [3:0] EQ_int;
wire [3:0] LT_int;

cmp_bitslice slice_0 (
    .A(A[0]),
    .B(B[0]),
    .LT_I(1'b0),
    .EQ_I(1'b1),
    .GT_I(1'b0),
    .LT_0(LT_int[0]),
    .EQ_0(EQ_int[0]),
    .GT_0(GT_int[0])
    );
    
cmp_bitslice slice_1 (
    .A(A[1]),
    .B(B[1]),
    .LT_I(LT_int[0]),
    .EQ_I(EQ_int[0]),
    .GT_I(GT_int[0]),
    .LT_0(LT_int[1]),
    .EQ_0(EQ_int[1]),
    .GT_0(GT_int[1])
    );
    
cmp_bitslice slice_2 (
    .A(A[2]),
    .B(B[2]),
    .LT_I(LT_int[1]),
    .EQ_I(EQ_int[1]),
    .GT_I(GT_int[1]),
    .LT_0(LT_int[2]),
    .EQ_0(EQ_int[2]),
    .GT_0(GT_int[2])
    );
    
cmp_bitslice slice_3 (
    .A(A[3]),
    .B(B[3]),
    .LT_I(LT_int[2]),
    .EQ_I(EQ_int[2]),
    .GT_I(GT_int[2]),
    .LT_0(LT_int[3]),
    .EQ_0(EQ_int[3]),
    .GT_0(GT_int[3])
    );            

assign LT_0 = LT_int[3];
assign EQ_0 = EQ_int[3];
assign GT_0 = GT_int[3];
    
endmodule
