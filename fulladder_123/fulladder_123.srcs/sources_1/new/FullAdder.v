`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 06:12:15 PM
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
    output S,
    output Cout
    );
    
    wire A, B, Cin;
    wire S, Cout;
    
    assign S = A ^ B ^ Cin; //summ decleration
    assign Cout = (A&B) | (B&Cin) | (A & Cin); //carry 
        
    
endmodule



