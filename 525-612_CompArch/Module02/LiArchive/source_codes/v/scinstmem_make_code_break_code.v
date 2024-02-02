/************************************************
  The Verilog HDL code example is from the book
  Computer Principles and Design in Verilog HDL
  by Yamin Li, published by A JOHN WILEY & SONS
************************************************/
module scinstmem_make_code_break_code (a,inst);   // instruction memory, rom
    input  [31:0] a;                        // address
    output [31:0] inst;                     // instruction
    wire   [31:0] rom [0:63];               // rom cells: 64 words * 32 bits
    assign inst = rom[a[7:2]];              // use word address to read rom
    // rom[word_addr] = instruction
    assign rom[6'h00] = 32'b00111100000000111100000000000000;
    assign rom[6'h01] = 32'b00111100000001001010000000000000;
    assign rom[6'h02] = 32'b10001100100001010000000000000000;
    assign rom[6'h03] = 32'b00110000101001100000000100000000;
    assign rom[6'h04] = 32'b00010000110000001111111111111101;
    assign rom[6'h05] = 32'b00110000101001100000000011111111;
    assign rom[6'h06] = 32'b00000000000001100010100100000010;
    assign rom[6'h07] = 32'b00100000101001111111111111110110;
    assign rom[6'h08] = 32'b00000000000001110011111111000010;
    assign rom[6'h09] = 32'b00010000111000000000000000000010;
    assign rom[6'h0a] = 32'b00100000101001010000000000110000;
    assign rom[6'h0b] = 32'b00001000000000000000000000001101;
    assign rom[6'h0c] = 32'b00100000101001010000000000110111;
    assign rom[6'h0d] = 32'b00001100000000000000000000011001;
    assign rom[6'h0e] = 32'b00110000110001010000000000001111;
    assign rom[6'h0f] = 32'b00100000101001111111111111110110;
    assign rom[6'h10] = 32'b00000000000001110011111111000010;
    assign rom[6'h11] = 32'b00010000111000000000000000000010;
    assign rom[6'h12] = 32'b00100000101001010000000000110000;
    assign rom[6'h13] = 32'b00001000000000000000000000010101;
    assign rom[6'h14] = 32'b00100000101001010000000000110111;
    assign rom[6'h15] = 32'b00001100000000000000000000011001;
    assign rom[6'h16] = 32'b00100000000001010000000000100000;
    assign rom[6'h17] = 32'b00001100000000000000000000011001;
    assign rom[6'h18] = 32'b00001000000000000000000000000010;
    assign rom[6'h19] = 32'b10101100011001010000000000000000;
    assign rom[6'h1a] = 32'b00100000011000110000000000000100;
    assign rom[6'h1b] = 32'b00000011111000000000000000001000;
    assign rom[6'h1c] = 32'b00000000000000000000000000000000;
    assign rom[6'h1d] = 32'b00000000000000000000000000000000;
    assign rom[6'h1e] = 32'b00000000000000000000000000000000;
    assign rom[6'h1f] = 32'b00000000000000000000000000000000;
endmodule
