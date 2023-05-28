`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2022 10:26:51 AM
// Design Name: 
// Module Name: race
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

//blocking1
module fbosc1 (y1, y2, clk, rst);
   output y1, y2; 
   input clk, rst; 
   reg y1, y2; 
//ALWAYS #2
always @(posedge clk or posedge rst) 
if (rst==1) y2 = 1; // preset 
else y2 = y1;
//ALWAYS #1
always @(posedge clk or posedge rst)
 if (rst==1) y1 = 0; // reset 
 else y1 = y2; 
 
endmodule


//blocking2
module fbosc2 (y1, y2, clk, rst);
   output y1, y2; 
   input clk, rst; 
   reg y1, y2; 

//ALWAYS #1
always @(posedge clk or posedge rst)
 if (rst==1) y1 = 0; // reset 
 else y1 = y2; 
 
 //ALWAYS #2
always @(posedge clk or posedge rst) 
if (rst==1) y2 = 1; // preset 
else y2 = y1;
 
endmodule

//Non-blocking
module fbosc3 (y1, y2, clk, rst);
   output y1, y2; 
   input clk, rst; 
   reg y1, y2; 
//ALWAYS #1
always @(posedge clk or posedge rst)
 if (rst) y1 <= 0; // reset 
 else y1 <= y2; 
//ALWAYS #2
always @(posedge clk or posedge rst) 
if (rst) y2 <= 1; // preset 
else y2 <= y1; 
endmodule
