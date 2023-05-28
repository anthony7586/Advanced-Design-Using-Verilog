`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2022 06:20:46 PM
// Design Name: 
// Module Name: TB_FullAdder
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


module TB_FullAdder(

    );

    reg A, B, Cin;
    wire Sum, Cout;

    FullAdder FA1 (.A(A),.B(B),.Cin(Cin),.S(Sum),.Cout(Cout)); //fulladder 

    //FullAdder FA2 ();//fulladder
    
    initial

    begin
    A = 1'b0; B =1'b0; Cin = 1'b0; #100 ;
    A = 1'b0; B =1'b0; Cin = 1'b1; #100 ;
    A = 1'b0; B =1'b1; Cin = 1'b0; #100 ;
    A = 1'b0; B =1'b1; Cin = 1'b1; #100 ;
    A = 1'b1; B = 1'b0; Cin = 1'b0; #100;
    A = 1'b1; B = 1'b0; Cin = 1'b1; #100;
    A = 1'b1; B = 1'b1; Cin = 1'b0; #100;
    A = 1'b1; B = 1'b1; Cin = 1'b1; #100;
    end

endmodule