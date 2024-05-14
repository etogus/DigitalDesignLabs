`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 10:03:37
// Design Name: 
// Module Name: v4_1
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


module v4_1(
    input [3:0] data,
    input [1:0] sel,
    output led

    );
reg tmp;
always@(data, sel) begin
    case (sel)
    2'b00:  tmp <= data[0];
    2'b01:  tmp <= data[1];
    2'b10:  tmp <= data[2];
    2'b11:  tmp <= data[3];    
    endcase
end    
assign led = tmp;
endmodule
