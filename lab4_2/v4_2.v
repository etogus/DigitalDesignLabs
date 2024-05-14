`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:58:11
// Design Name: 
// Module Name: v4_2
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

module v4_2(
    input [1:0] sw,
    input [3:0] btn,
    output [3:0] led
    );
reg [3:0] tmp;
always@(sw, tmp) begin
    case (sw)
    2'b00:  tmp <= 4'b0001;
    2'b01:  tmp <= 4'b0010;
    2'b10:  tmp <= 4'b0100;
    2'b11:  tmp <= 4'b1000;  
    endcase
end      
assign led[0] = btn[0] & tmp[0];
assign led[1] = btn[1] & tmp[1];
assign led[2] = btn[2] & tmp[2];
assign led[3] = btn[3] & tmp[3];
endmodule
