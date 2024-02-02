`timescale 1ns / 1ps
/*
Course: 525.612 Computer Architecture SP 24
Instructor: Nick Beser
Name: Scott Strathman
Description: Test bench for Assignment 2, Question 1
*/
module test_top_level;
    reg a,b,c;
    wire f,g;
    
    top_level dut(a,b,c,f,g);
    
initial
    begin
    
    a=0; b=0; c=0;
    #50;
    a=0; b=0; c=1;
    #50;
    a=0; b=1; c=0;
    #50;
    a=0; b=1; c=1;
    #50;
    a=1; b=0; c=0;
    #50;
    a=1; b=0; c=1;
    #50;
    a=1; b=1; c=0;
    #50;
    a=1; b=1; c=1;
    #50;
    
    end
endmodule //test_top_level