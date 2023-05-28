`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Anthony Ruiz
// 
// Create Date: 11/03/2022 11:16:10 AM
// Design Name: encoder testbench  
// Module Name: TB_encoder
// Project Name: lab 1

// Description: test bench for encoder module

//////////////////////////////////////////////////////////////////////////////////


module TB_encoder(
    );
    
    
    reg [3:0] data;
    wire [6:0] codeword;
    reg clk;
    reg reset;
    
    encoder encoder1 (data,codeword,clk,reset);
    
/////////////////////////////////////////////////////
//loop to create clock input
 always 
 begin 
clk = 1'b0; #10;
clk = 1'b1; #10;
 end
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////




 
initial 
    begin 
    //begins with one reset
    reset =   1'b1;  data = 4'b0000; #30;
    
    reset =   1'b0;  data = 4'b0000; #30;
    reset =   1'b0;  data = 4'b0001; #30;
    reset =   1'b0;  data = 4'b0010; #30;
    reset =   1'b0;  data = 4'b0011; #30; 
    /////////////////////////////////////////////////////
    //reset enabled
    reset =   1'b1;  data = 4'b0000; #30;
    reset =   1'b1;  data = 4'b0001; #30;
    /////////////////////////////////////////////////////
    //back to reset disabled 
    reset =   1'b0;  data = 4'b0000; #30;
    
   end
    
    
    
    
    
    
    
endmodule
