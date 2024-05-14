`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 20:25:20
// Design Name: 
// Module Name: v4_3_tb
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


module v4_3_tb;
reg [3:0] sw;  
wire [1:0] led;

v4_3 CUT ( .sw(sw), .led(led) );

initial begin

sw = 4'b0000;
#5
sw = 4'b0001;
#5
sw = 4'b0010;
#5
sw = 4'b0100;
#5
sw = 4'b1000;
#5

$finish();
end 

endmodule
