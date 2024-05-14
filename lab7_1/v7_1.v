`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 21:05:10
// Design Name: 
// Module Name: v7_1
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


module v7_1(
    input [7:0] sw,
    output reg [7:0] led,
    input Clk,
    input sel
    );
reg [7:0] temp;
always @(Clk, sel)
begin
    if(Clk)
       temp = sw;    
	if(sel)
	   led = temp;
	else
	   led = sw;
end
endmodule
