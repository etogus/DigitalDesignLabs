`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 10:16:26
// Design Name: 
// Module Name: v4_1b
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


module v4_1b(
    input [15:0] sw,
    input [1:0] sel,
    output [3:0] led
    );
reg [3:0] tmp;
always@(sw, sel) begin
    case (sel)
    2'b00:  tmp <= sw[3:0];
    2'b01:  tmp <= sw[7:4];
    2'b10:  tmp <= sw[11:8];
    2'b11:  tmp <= sw[15:12];    
    endcase
end      
assign led = tmp;
endmodule
