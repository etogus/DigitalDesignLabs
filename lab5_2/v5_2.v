`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 20:06:38
// Design Name: 
// Module Name: v5_2
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


module v5_2(
    input [11:0] sw,
    input [3:0] sel,
    output [1:0] RGB0
    );
reg tmp;
reg red;
always@(sw, sel) begin
    case (sel)
        4'b0000:  tmp <= sw[0];
        4'b0001:  tmp <= sw[1];
        4'b0010:  tmp <= sw[2];
        4'b0011:  tmp <= sw[3];
        4'b0100:  tmp <= sw[4];
        4'b0101:  tmp <= sw[5];
        4'b0110:  tmp <= sw[6];
        4'b0111:  tmp <= sw[7];
        4'b1000:  tmp <= sw[8];
        4'b1001:  tmp <= sw[9];
        4'b1010:  tmp <= sw[10];
        4'b1011:  tmp <= sw[11];
        default:  red <= 1'b1;
    endcase
end    
assign RGB0[1] = tmp;
assign RGB0[0] = (sel >= 4'b1100);
endmodule
