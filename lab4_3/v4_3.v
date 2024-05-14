`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 20:03:28
// Design Name: 
// Module Name: v4_3
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


module v4_3(
    input [3:0] sw,
    output [1:0] led
    );
reg [1:0] tmp;
always@(sw, tmp) begin
    case (sw)
    4'b0001:  tmp <= 2'b00;
    4'b0010:  tmp <= 2'b01;
    4'b0100:  tmp <= 2'b10;
    4'b1000:  tmp <= 2'b11;  
    endcase 
end      
assign led = tmp;   
endmodule
