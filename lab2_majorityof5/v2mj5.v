`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 06:39:16
// Design Name: 
// Module Name: v2mj5
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


module v2mj5(
    input [4:0] sw, 
    output led
    );
    assign led = (sw[0] & sw[1] & sw[2]) | //ABC
    (sw[0] & sw[1] & sw[3]) | //ABD
    (sw[0] & sw[1] & sw[4]) | //ABE
    (sw[0] & sw[2] & sw[3]) | //ACD
    (sw[0] & sw[2] & sw[4]) | //ACE
    (sw[0] & sw[3] & sw[4]) | //ADE
    (sw[1] & sw[2] & sw[3]) | //BCD
    (sw[1] & sw[2] & sw[4]) | //BCE
    (sw[1] & sw[3] & sw[4]) | //BDE
    (sw[2] & sw[3] & sw[4]);  //CDE
endmodule
