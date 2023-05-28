`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2021 01:37:23 PM
// Design Name: 
// Module Name: Shift_Register
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


module Shift_Register #(parameter N =4)(
    input clk,
    input reset,
    input s_in,
    output s_out
    );
    
    reg [N-1:0] r_reg;
    wire [N-1:0] r_next;
    
    always @(posedge clk, posedge reset)
        if(reset)
            r_reg <=0;
        else
            r_reg <= r_next;
            
        assign r_next = {s_in, r_reg [N-1:1]};
        assign s_out = r_reg[0];
                
endmodule
