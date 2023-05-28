`timescale 1ns / 1ps

// Create Date: 09/08/2021 04:36:01 PM
// Design Name: 
// Module Name: TB_FullAdder
// Project Name: 


module TB_FullAdder(

    );
    
 //INPUTS
 reg A;
 reg B;
 reg Cin;
 //OUTPUTS
 wire Sum;
 wire Cout;
 reg reg [2:0] i = 3'd0;
 
  FullAdder DUT (

  .A(A), 

  .B(B), 

  .Cin(Cin), 

  .Sum(Sum), 

  .Cout(Cout)

  );
  
  initial 
  
  begin
  
  //Stimulus here
  
  A = 1'b0; B = 1'b0; Cin = 1'b0; #100;
 
	for = 0; i < 8; i = i + 1'b1)begin

   {A,B,Cin} = {A,B,Cin} + 1'b1;

   #20;
  
  end
  
  
endmodule
