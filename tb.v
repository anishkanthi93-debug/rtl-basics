`timescale 1ns/1ps
module tb;
  reg clk = 0, rst_n = 0, en = 0, a, b, sel;
  wire [3:0] q; wire y;
  counter4 dut (.clk(clk), .rst_n(rst_n), .en(en), .q(q));
  mux2 m (.a(a), .b(b), .sel(sel), .y(y));
  always #5 clk = ~clk;
  initial begin
    $dumpfile("wave.vcd"); $dumpvars(0, tb);
    a = 0; b = 1; sel = 0;
    #12 rst_n = 1; en = 1;
    #200 en = 0;
    #30 sel = 1;
    #20 $finish;
  end
endmodule
