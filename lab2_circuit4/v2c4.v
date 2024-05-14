`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 06:34:03
// Design Name: 
// Module Name: v2c4
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


module v2c4(
    input [15:0] sw,
    output [15:0] led
    );
    assign led[12] = sw[11] & (sw[15] | ~sw[14]| sw[13]| sw[12] ) & ( ~sw[15] | sw[14]| sw[13]| sw[12])& (sw[15]| sw[14]| sw[13]| sw[12]);
    assign led[13] = sw[11] & (sw[15] | ~sw[14]| sw[13]| sw[12] ) & ( ~sw[15] | sw[14]| sw[13]| sw[12])& (sw[15]| sw[14]| sw[13]| sw[12]); 
    assign led[14] = sw[11] & (sw[15] | ~sw[14]| sw[13]| sw[12] ) & ( ~sw[15] | sw[14]| sw[13]| sw[12])& (sw[15]| sw[14]| sw[13]| sw[12]);
    assign led[15] = sw[11] & (sw[15] | ~sw[14]| sw[13]| sw[12] ) & ( ~sw[15] | sw[14]| sw[13]| sw[12])& (sw[15]| sw[14]| sw[13]| sw[12]);
endmodule
