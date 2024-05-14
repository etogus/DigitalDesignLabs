`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 15:58:56
// Design Name: 
// Module Name: v3_3
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


module v3_3(
    input [7:0] sw,
    output [2:0] RGB0
    );   
    assign RGB0[0] = ^sw;    
    assign RGB0[1] = ~^sw;
endmodule
