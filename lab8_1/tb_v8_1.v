`timescale 1ns / 1ps

module tb_v8_1;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  wire [7:0] D0_SEG, D1_SEG;
  wire [3:0] D0_AN, D1_AN;
  
  v8_1 uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout),
    .D0_SEG(D0_SEG),
    .D1_SEG(D1_SEG),
    .D0_AN(D0_AN),
    .D1_AN(D1_AN)
  );
  
  reg clk = 0;
  always #5 clk = ~clk;

  initial begin
    a = 4'b0000;
    b = 4'b0000;
    cin = 0;

    #20 a = 4'b0010; b = 4'b0001; cin = 0; // Test vector 1
    #20 a = 4'b1010; b = 4'b0001; cin = 1; // Test vector 2
    
    #100 $finish;
  end

  always @(posedge clk) begin
    $display("Time=%0t a=%b b=%b cin=%b sum=%b cout=%b D0_SEG=%b D1_SEG=%b D0_AN=%b D1_AN=%b",
             $time, a, b, cin, sum, cout, D0_SEG, D1_SEG, D0_AN, D1_AN);
  end
  
endmodule
