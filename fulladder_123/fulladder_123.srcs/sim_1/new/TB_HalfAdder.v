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


module TB_HalfAdder(

    );

    reg A, B, Cin;
    wire HA1_Sum, HA1_Cout;
    wire HA2_Cout, HA2_SumB ;

    HalfAdder HA1 (.A(A),
                   .B(B),
                   .S(Sum),
                   .Cout(Cout));

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