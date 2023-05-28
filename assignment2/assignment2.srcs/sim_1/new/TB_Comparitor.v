`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 06:30:49 PM
// Design Name: 
// Module Name: TB_Comparitor
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
//this is test bench

module TB_Comparitor(
    );
//inputs 
reg [3:0] A;
reg [3:0] B;
//outputs 
wire eq4;


//device under test    
    Comparitor DUT (
    .A(A),
    .B(B),
    .eq4(eq4)
    );
    
    initial 
       begin

   A = 4'b0000; B = 4'b0001;#100;
   A = 4'b0011; B = 4'b0001;#100;
   A = 4'b0011; B = 4'b0011;#100;
   A = 4'b0000; B = 4'b0000;#100;

 
         
    end
    
    
endmodule
