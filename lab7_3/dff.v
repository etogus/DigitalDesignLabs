`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 22:52:25
// Design Name: 
// Module Name: dff
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


module dff(
    input clk, D, rst,
    output reg Q 
    );


always @ (posedge(clk), posedge(rst))
begin
   if (rst==1)
       Q <= 1'b0;	// Q is reset to 0
   else
       Q <= D;
end
endmodule