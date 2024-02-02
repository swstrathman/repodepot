`timescale 1ns / 1ps
/*
Course: 525.612 Computer Architecture SP 24
Instructor: Nick Beser
Name: Scott Strathman
Description: Verilog design for Assignment 2, Question 1
*/

// AND GATE MODULE
module and_gate(
    andin_1,
    andin_2,
    andout);
    
    input andin_1;
    input andin_2;
    output andout;
    
    assign andout = andin_1 & andin_2;
    
endmodule

// OR GATE MODULE
module or_gate(
    orin_1,
    orin_2,
    orout);
    
    input orin_1;
    input orin_2;
    output orout;
    
    assign orout = orin_1 | orin_2;
    
endmodule

// NOT GATE MODULE
module not_gate(
    notin,
    notout);
    
    input notin;
    output notout;
    
    assign notout = ~notin;

endmodule


// TOP LEVEL DESIGN
module top_level(A, B, C, F, G);
    input A, B, C;
    output F, G;
    
    wire and1_out, or2_out, not1_out, not2_out;
    
    and_gate and1(A, B, and1_out);
    and_gate and2(or2_out, not2_out, G);
    or_gate or1(and1_out, C, F);
    or_gate or2(not1_out, B, or2_out);
    not_gate not1(A, not1_out);
    not_gate not2(C, not2_out);
    
endmodule
