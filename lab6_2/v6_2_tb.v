`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 12:47:13
// Design Name: 
// Module Name: v6_2_tb
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


module v6_2_tb;


reg S,R;
wire Qn, Q;

v6_2 CUT ( .S(S), .R(R), .Q(Q), .Qn(Qn) );

initial begin
// Initialize Inputs
S = 1;
R = 1;
// Add stimulus here
#100    S = 0;
#100    S = 1;
#100    R = 0;
#100    R = 1;
#100    S = 0;
        R = 0;
#100    S = 1;
        R = 1;
#100    S = 0;
        R = 0;
#100         ;
end

endmodule
