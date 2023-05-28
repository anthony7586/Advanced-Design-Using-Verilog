`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anthony Ruiz 
// 
// Create Date: 10/05/2022 06:57:50 PM
// Design Name: comparitor, this program compares 4 bit numbers bit by bit 


//this is 1 bit comparitor 
    module equiv(
    input p,
    input q,
    output r
    );
    
    xnor (r,p,q); //if the values p q match then the output will be 1 
    
    
    
endmodule





