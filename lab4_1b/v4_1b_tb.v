`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 10:38:06
// Design Name: 
// Module Name: v4_1b_tb
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


module v4_1b_tb;
    reg [15:0] sw;
    reg [1:0] sel;
    wire [3:0] led;

    v4_1b CUT ( .sw(sw), .sel(sel), .led(led) );
    integer k;

    initial begin
        for (k = 0; k <= 3; k = k + 1) begin
            sel = k;
            sw = 16'hF1;
            #10;
        end

        for (k = 0; k <= 3; k = k + 1) begin 
            sel = k;
            sw = 16'h3;
            #10;     
        end

        for (k = 0; k <= 3; k = k + 1) begin 
            sel = k;
            sw = 16'hD63;
            #10;     
        end

        for (k = 0; k <= 3; k = k + 1) begin 
            sel = k;
            sw = 16'hFFFF;
            #10;     
        end

        $finish;
    end    
endmodule