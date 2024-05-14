`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 15:09:22
// Design Name: 
// Module Name: v3_2
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


module v3_2(
    input [7:0] sw,
    output [2:0] RGB0
    );
    
    assign RGB0[0] = 
    (sw[0] & sw[1] & ~sw[2] & ~sw[3]) | 
    (sw[0] & ~sw[1] & sw[2] & ~sw[3]) | 
    (sw[0] & ~sw[1] & ~sw[2] & sw[3]) |
    (~sw[0] & sw[1] & sw[2] & ~sw[3]) |
    (~sw[0] & sw[1] & ~sw[2] & sw[3]) |
    (~sw[0] & ~sw[1] & sw[2] & sw[3]);
    
    assign RGB0[2] = 
    (sw[4] & ~sw[5] & ~sw[6] & ~sw[7]) |
    (~sw[4] & sw[5] & ~sw[6] & ~sw[7]) |
    (~sw[4] & ~sw[5] & sw[6] & ~sw[7]) |
    (~sw[4] & ~sw[5] & ~sw[6] & sw[7]);
                    
endmodule
