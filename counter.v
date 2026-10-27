module counter4 (input clk, input rst_n, input en, output reg [3:0] q);
  always @(posedge clk or negedge rst_n)
    if (!rst_n) q <= 4'd0;
    else if (en) q <= q + 1;
endmodule
