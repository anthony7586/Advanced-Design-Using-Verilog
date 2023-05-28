`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2022 06:47:00 PM
// Design Name: halfadder
//Anthony Ruiz
// 
//////////////////////////////////////////////////////////////////////////////////


module HalfAdder1(
    input A,
    input B,
    output Sum,
    output Cout
    );
    
    
   assign Sum = A ^ B; // sum declaration
   assign Cout = (A & B); // Carry 
   
endmodule
