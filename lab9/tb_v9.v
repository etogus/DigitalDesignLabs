`timescale 1ns / 1ps

module tb_v9;
 reg[7:0] A, B;
 reg[2:0] sel;

 wire[7:0] out;
 wire c_out;

 integer i;
 v9 uut(
    .A(A),
    .B(B),
    .sel(sel),
    .out(out),
    .c_out(c_out) 
 );
initial begin
    A = 8'bb11111111;
    B = 8'd1;
    sel = 3'd0;
    for (i=0;i<=7;i=i+1)
    begin
        sel = i;
        #10;
    end

 end
endmodule
