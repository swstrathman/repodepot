/************************************************
  The Verilog HDL code example is from the book
  Computer Principles and Design in Verilog HDL
  by Yamin Li, published by A JOHN WILEY & SONS
************************************************/
module mux2x1_behavioral_function_if_else (a0,a1,s,y);       // multiplexer,
    input  s, a0, a1;             // inputs                  //     function
    output y;                     // output                  //     if else
    assign y = sel (a0,a1,s);     // call a function with parameters
    function sel;                 // function name (= return value)
        input a,b,c;              // notice the order of the input arguments
        if (c) sel = b;           // if (c==1) return value = b
        else   sel = a;           // if (c==0) return value = a
    endfunction
endmodule
