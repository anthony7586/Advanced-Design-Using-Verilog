`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2021 06:24:07 PM
// Design Name: 
// Module Name: FullAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FullAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    

    
   assign Sum = A ^ B ^ Cin; // sum declaration
   assign Cout = (A & B) | (B & Cin) | (A & Cin); // Carry 
    
endmodule



