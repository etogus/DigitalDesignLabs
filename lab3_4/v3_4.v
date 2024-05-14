`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 16:16:24
// Design Name: 
// Module Name: v3_4
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


module v3_4(
    input [7:0] sw,
    input [2:0] btn,
    output [2:0] RGB0
    );
    assign RGB0[0] = ^sw;    
    assign RGB0[1] = ~^sw;
    assign RGB0[2] = RGB0[1] & (btn[0] ^ btn[1] ^ btn[2]);
endmodule
