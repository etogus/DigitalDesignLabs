`timescale 1ns / 1ps

// Bit-slice module
module bit_slice (
  input aa, bb, ccin,
  output ssum, ccout
);
  assign ssum = aa ^ bb ^ ccin;
  assign ccout = (aa & bb) | (ccin & (aa ^ bb));
endmodule

// 4-bit Carry Look-ahead Adder module
module v8_1(
  input [3:0] a, b,
  input cin,
  output [3:0] sum,
  output [3:0] cout,
  output reg [7:0] D0_SEG,
  output reg [3:0] D0_AN
);
  wire [3:0] P, G;
  wire [3:0] C_out;
  reg [3:0] counter;
  
  assign P[0] = a[0] ^ b[0];
  assign G[0] = a[0] & b[0];
  assign P[1] = a[1] ^ b[1];
  assign G[1] = a[1] & b[1];
  assign P[2] = a[2] ^ b[2];
  assign G[2] = a[2] & b[2];
  assign P[3] = a[3] ^ b[3];
  assign G[3] = a[3] & b[3];
  
  assign C_out[0] = G[0];
  assign C_out[1] = G[1] | (P[1] & G[0]);
  assign C_out[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & P[0]);
  assign C_out[3] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & P[1]) | (P[3] & P[2] & P[1] & G[0]);

  bit_slice U1 (.aa(a[0]), .bb(b[0]), .ccin(C_out[0]), .ssum(sum[0]), .ccout(cout[0]));
  bit_slice U2 (.aa(a[1]), .bb(b[1]), .ccin(C_out[1]), .ssum(sum[1]), .ccout(cout[1]));
  bit_slice U3 (.aa(a[2]), .bb(b[2]), .ccin(C_out[2]), .ssum(sum[2]), .ccout(cout[2]));
  bit_slice U4 (.aa(a[3]), .bb(b[3]), .ccin(C_out[3]), .ssum(sum[3]), .ccout(cout[3]));
  
  always @(*) begin
    D0_AN = 4'b0111;
  end
  
  always @(*) 
    case (sum)
      4'b0000: 
        begin
            D0_SEG = 7'b1000000; // 0
        end    
      4'b0001: 
        begin
            D0_SEG = 7'b1111001; // 1
        end    
      4'b0010: 
        begin
            D0_SEG = 7'b0100100; // 2
        end    
      4'b0011: 
        begin
            D0_SEG = 7'b0110000; // 3
        end    
      4'b0100: 
        begin
            D0_SEG = 7'b0011001; // 4
        end    
      4'b0101: 
        begin
            D0_SEG = 7'b0010010; // 5
        end    
      4'b0110: 
        begin
            D0_SEG = 7'b0000010; // 6
        end    
      4'b0111: 
        begin
            D0_SEG = 7'b1111000; // 7
        end    
      4'b1000: 
        begin
            D0_SEG = 7'b0000000; // 8
        end    
      4'b1001: 
        begin
            D0_SEG = 7'b0010000; // 9
        end    
      4'b1010: 
        begin
            D0_SEG = 7'b0001000; // 10
        end
      4'b1011: 
        begin
            D0_SEG = 7'b0000011; // 11
        end  
      4'b1100: 
        begin
            D0_SEG = 7'b1000110; // 12
        end 
      4'b1101: 
        begin
            D0_SEG = 7'b0100001; // 13
        end   
      4'b1110: 
        begin
            D0_SEG = 7'b00000100; // 14
        end  
      4'b1111: 
        begin
            D0_SEG = 7'b0001110; // 15
        end   
    endcase
  
endmodule
