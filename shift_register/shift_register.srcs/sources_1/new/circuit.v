`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2022 06:37:45 PM
// Design Name: 
// Module Name: circuit
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


module circuit(
    input Pass,
    input Trigger,
    output C,
    output A
    );
    
    wire wire1, wire2;
    
    mux mux1 (.A(Pass),.B(wire1),.Sel(Trigger),.C(C));
    mux mux2 (.A(wire2),.B(Pass),.Sel(Trigger),.C(A));
    
   
endmodule
