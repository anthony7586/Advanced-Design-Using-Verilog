`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Kenneth Ayala
// 
// Create Date: 11/04/2022 11:16:10 AM
// Design Name: decoder testbench
// Module Name: TB_decoder
// Project Name: lab 1

// Description: test bench for decoder module

//////////////////////////////////////////////////////////////////////////////////


module TB_decoder(
    );

    reg [6:0] in;
    wire [6:0] correct_in;
    wire [3:0] data;
    
    
    reg clk;
    reg reset;

    decoder decoder1 (.data(data),.in(in),.clk(clk),.reset(reset),.corrected_In(correct_in));

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
    reset =   1'b1;  in = 7'b0000000; #30;

    reset =   1'b0;  in = 7'b0000000; #30;
    reset =   1'b0;  in = 7'b0000001; #30;
    reset =   1'b0;  in = 7'b0000010; #30;
    reset =   1'b0;  in = 7'b0000011; #30;
    reset =   1'b0;  in = 7'b0010111; #30; 
    reset =   1'b0;  in = 7'b0011111; #30;  
    reset =   1'b0;  in = 7'b0101100; #30; 
    reset =   1'b0;  in = 7'b0000001; #30; 
    reset =   1'b0;  in = 7'b1100110; #30; 
    reset =   1'b0;  in = 7'b1000110; #30;
    reset =   1'b0;  in = 7'b1111111; #30;  
    /////////////////////////////////////////////////////
    //reset enabled
    reset =   1'b1;  in = 7'b0000000; #30;
    reset =   1'b1;  in = 7'b0000000; #30;
    /////////////////////////////////////////////////////
    //back to reset disabled 
    reset =   1'b0;  in = 7'b0000000; #30;

   end
endmodule
