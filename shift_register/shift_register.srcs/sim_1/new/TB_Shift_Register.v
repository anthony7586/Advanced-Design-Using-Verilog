`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2022 07:01:51 PM
// Design Name: 
// Module Name: TB_Shift_Register
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
module TB_Shift_Register(
);

reg clk;
reg reset;
reg s_in;
wire s_out;

parameter CLOCK_PERIOD = 5;
Shift_Register shiftregister1 (.clk(clk), .reset(reset), .s_in(s_in), .s_out(s_out));


initial 
clk= 0;
always #CLOCK_PERIOD clk= ~clk;

initial 

begin
reset = 1'b1;
s_in =  1'b0; #10;
reset = 1'b0;
s_in= 1'b1; #10;
#100 $finish;

end
endmodule