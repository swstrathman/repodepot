/************************************************
  The Verilog HDL code example is from the book
  Computer Principles and Design in Verilog HDL
  by Yamin Li, published by A JOHN WILEY & SONS
************************************************/
module wallace_24x26_product (a,b,z);                    // 24*26 wt product
    input  [23:00] a;                                    // 24 bits
    input  [25:00] b;                                    // 26 bits
    output [49:00] z;                                    // product
    wire   [49:08] x;                                    // sum high
    wire   [49:08] y;                                    // carry high
    wire   [49:08] z_high;                               // product high
    wire   [07:00] z_low;                                // product low
    wallace_24x26 wt_partial (a, b, x, y, z_low);        // partial product
    assign z_high = x + y;
    assign z = {z_high,z_low};                           // product
endmodule
