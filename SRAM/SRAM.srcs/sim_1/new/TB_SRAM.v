`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 06:41:39 PM
// Design Name: 
// Module Name: TB_SRAM
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


module TB_SRAM(
    );
    
parameter ADR   = 8;
parameter Data  = 8;
parameter Depth = 256;   
    
reg  [Data-1:0]  DataIn;
wire [Data-1:0]  DataOut;
reg [ADR-1:0]  Addr;  
reg CS, WE, RD, Clk;   

SRAM s0 (        .DataIn(DataIn),
                .DataOut(DataOut),
                .Addr(Addr), 
                .CS(CS), 
                .WE(WE), 
                .RD(RD), 
                .Clk(Clk)
                );
                
    always 
 begin 
Clk = 1'b0; #10;
Clk = 1'b1; #10;
 end
  
  initial 
  begin 
  DataIn = 8'b00010000; Addr = 8'b00010000; CS = 1'b1; WE = 1'b1; RD=1'b0;  #150; //10
  DataIn = 8'b00100000; Addr = 8'b00100000; CS = 1'b1; WE = 1'b1; RD=1'b0;  #50; //20
  DataIn = 8'b00110000; Addr = 8'b00110000; CS = 1'b1; WE = 1'b1; RD=1'b0;  #50; //30
  DataIn = 8'b01000000; Addr = 8'b01000000; CS = 1'b1; WE = 1'b1; RD=1'b0;  #50; //40
                               
  DataIn = 8'b00010000; Addr = 8'b00010000; CS = 1'b1; WE = 1'b0; RD=1'b1;  #150; //10
  DataIn = 8'b00100000; Addr = 8'b00100000; CS = 1'b1; WE = 1'b0; RD=1'b1;  #50; //20
  DataIn = 8'b00110000; Addr = 8'b00110000; CS = 1'b1; WE = 1'b0; RD=1'b1;  #50; //30
  DataIn = 8'b01000000; Addr = 8'b01000000; CS = 1'b1; WE = 1'b0; RD=1'b1;  #50; //40
  
  
  end       
endmodule
