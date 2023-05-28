`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSUF
// Engineer: Anthony Ruiz
// Create Date: 11/01/2021 03:30:38 PM
// Module Name: fsm
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module fsm (
 input wire pause,
 input wire restart,
 input wire clk,
 input wire rst,
 output reg [1:0] state,
 output reg odd,
 output reg even,
 output reg terminal
 );
 parameter [1:0] FIRST = 2'b11;
 parameter [1:0] SECOND = 2'b01;
 parameter [1:0] THIRD = 2'b10;
 
 
    always @(posedge clk or posedge rst)
    begin
        if (rst) 
        state <= FIRST;
        
    else
    begin
                
    case(state)
    FIRST: if (restart || pause) 
    state <= FIRST;
    else 
    state <= SECOND;
 
    SECOND: if (restart) 
    state <= FIRST;
    else if (pause) 
    state <= SECOND;
    else 
    state <= THIRD;
 
    THIRD: if (!restart && pause) 
    state <= THIRD;
    else 
    state <= FIRST;
    default: state <= FIRST;
    endcase
    
    end
    end
    
 always @*
    begin
        odd = (state == FIRST) || (state == THIRD);
        even = (state == SECOND);
        terminal = (state == THIRD) && (restart || !pause);
    end
endmodule
