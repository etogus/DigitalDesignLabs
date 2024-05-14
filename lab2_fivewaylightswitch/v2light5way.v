`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 06:48:15
// Design Name: 
// Module Name: v2light5way
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


module v2light5way(
    input [4:0] sw, 
    output led
    );
    assign led = sw[0] ^ sw[1] ^ sw[2] ^ sw[3] ^ sw[4];  
    /*assign led = (sw[0] & ~sw[1]& ~sw[2]& ~sw[3]& ~sw[4] ) | 
    (~sw[0] & sw[1]& ~sw[2]& ~sw[3]& ~sw[4] ) | 
    (~sw[0] & ~sw[1]& sw[2]& ~sw[3]& ~sw[4] ) | 
    (sw[0] & sw[1]& sw[2]& ~sw[3]& ~sw[4] ) | 
    (~sw[0] & ~sw[1]& ~sw[2]& sw[3]& ~sw[4] ) |
    (sw[0] & sw[1]& ~sw[2]& sw[3]& ~sw[4] ) |  
    (sw[0] & ~sw[1]& sw[2]& sw[3]& ~sw[4] ) | 
    (~sw[0] & sw[1]& sw[2]& sw[3]& ~sw[4] ) | 
    (~sw[0] & ~sw[1]& ~sw[2]& ~sw[3]& sw[4] ) | 
    (sw[0] & sw[1]& ~sw[2]& ~sw[3]& sw[4] ) | 
    (sw[0] & ~sw[1]& sw[2]& ~sw[3]& sw[4] ) | 
    (~sw[0] & sw[1]& sw[2]& ~sw[3]& sw[4] ) | 
    (sw[0] & ~sw[1]& ~sw[2]& sw[3]& sw[4] ) | 
    (~sw[0] & sw[1]& ~sw[2]& sw[3]& sw[4] ) | 
    (~sw[0] & ~sw[1]& sw[2]& sw[3]& sw[4] ) | 
    (sw[0] & sw[1]& sw[2]& sw[3]& sw[4] );
    */
endmodule
