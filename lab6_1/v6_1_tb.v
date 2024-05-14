`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2024 22:34:37
// Design Name: 
// Module Name: v6_1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module v6_1_tb;
reg A, B, C;
wire X;
CombCirc CUT ( .A(A), .B(B), .C(C), .X(X) );
integer k = 0; 
initial begin
    A = 0; 
    B = 0; 
    C = 0;
    for (k = 0; k < 4; k=k+1)
    begin 
        {A,C} = k; 
        #5 B = 1; 
        #5 B = 0;
        #5 ;
    end 
end
endmodule
