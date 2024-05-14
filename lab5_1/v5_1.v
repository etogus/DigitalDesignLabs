`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 19:42:38
// Design Name: 
// Module Name: v5_1
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


module v5_1(
    input [7:0] I,
    input D, //sw8
    input R, //sw9
    input F, //sw10
    input P, //btn0
    input P1, //btn1
    output reg [7:0] Y
    );
    
always @ (I, P, P1)
begin
    if ((P == 0) && (P1 == 0))
        Y <= I;
    else if ((P == 1) && (P1 == 0))
        begin
            if (R == 0)
                Y <= (D == 0) ? {I[6:0], F} : {F, I[7:1]};
            else
                Y <= (D == 0) ? {I[6:0], I[7]} : {I[0], I[7:1]};
        end
    else if ((P == 0) && (P1 == 1))
        begin
            if (R == 0)
                Y <= (D == 0) ? {I[5:0], F, I[7]} : {I[0],F, I[7:2]};
            else
                Y <= (D == 0) ? {I[5:0], I[7],I[6]} : {I[1],I[0], I[7:2]};
        end    
    else 
        begin
            if (R == 0)
                Y <= (D == 0) ? {I[4:0], F, I[6], I[5]} : {I[2], I[1], F, I[7:3]};
            else
                Y <= (D == 0) ? {I[4:0], I[7], I[6], I[5]} : {I[0], I[1], I[2], I[7:3]};
        end
end

endmodule
