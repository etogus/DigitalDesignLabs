`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2024 19:12:23
// Design Name: 
// Module Name: v6_1
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


`timescale 1ns / 1ps 
module CombCirc( 
    input A, 
    input B, 
    input C, 
    output X );  
    
    // Circuit Description  
    
    wire N1, N2, N3;   
    // AND gate with 1ns delay 
    assign #5 N1 = A & B; 
    // Not Gate with 1ns delay 
    assign #5 N2 = ~B; 
    // And Gate with 1ns delay 
    assign #5 N3 = N2 & C; 
    // Or Gate with 1ns delay 
    assign #5 X = N1 | N3;  
    
    endmodule 