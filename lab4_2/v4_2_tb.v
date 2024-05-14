`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 12:37:27
// Design Name: 
// Module Name: v4_2_tb
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


module v4_2_tb;
    reg [1:0] sw;
    reg [3:0] btn;
    wire [3:0] led;

    v4_2 CUT ( .sw(sw), .btn(btn), .led(led) );
    integer k;

    initial begin
        for (k = 0; k <= 4; k = k + 1) begin
            btn = k;
            sw = 2'b10;
            #10;
        end

        $finish;
    end    
endmodule
