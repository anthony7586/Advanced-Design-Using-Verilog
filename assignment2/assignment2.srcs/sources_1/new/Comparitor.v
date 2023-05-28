`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anthony Ruiz
// Create Date: 10/05/2022 07:10:41 PM
// Design Name: Comparitor
// Module Name: Comparitor
//////////////////////////////////////////////////////////////////////////////////

//this is 4 bit comparitor 
module Comparitor(
    input  [3:0] A,
    input  [3:0] B,
    output eq4
    );



wire [3:0]r0;



equiv eq0 (.p(A[0]),.q(B[0]),.r(r0[0]));
equiv eq1 (.p(A[1]),.q(B[1]),.r(r0[1]));
equiv eq2 (.p(A[2]),.q(B[2]),.r(r0[2]));
equiv eq3 (.p(A[3]),.q(B[3]),.r(r0[3]));

assign eq4 = r0[0] & r0[1] & r0[2] & r0[3] ;



endmodule