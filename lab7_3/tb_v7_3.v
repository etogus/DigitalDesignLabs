`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 22:40:32
// Design Name: 
// Module Name: tb_v7_3
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


module tb_v7_3;
// Inputs
reg clk;
reg rst;
// Outputs
wire led;
// Instantiate the Unit Under Test (UUT)
v7_3 uut (
.clk(clk),
.rst(rst),
.led(led)
);
always
#5 clk = ~clk;
initial begin
// Initialize Inputs
clk = 0;
rst = 1;
#10 rst = 0;
// Wait 100 ns for global reset to finish
#100;
end
endmodule
