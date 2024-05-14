`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 21:57:58
// Design Name: 
// Module Name: v7_2
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


module v7_2(
    input [7:0] sw,
    output reg [7:0] led,
    input clk,
    input en,
    input sel
    );
reg [7:0] temp;
always @(clk, sel, en)
begin
    if(clk && en)
       temp = sw;
    if(sel)
	   led = temp;
	else
	   led = sw;     
end
endmodule
