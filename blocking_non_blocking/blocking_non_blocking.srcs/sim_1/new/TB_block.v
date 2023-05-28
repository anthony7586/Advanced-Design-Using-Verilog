`timescale 1ns / 1ps





module TB_block(
//input clk,
    //input rst,
    //output y1,
    //output y2
    );

    reg clk, rst;
    wire y1_b1, y2_b1;
    wire y1_b2, y2_b2;
    wire y1_nb, y2_nb;
    
    //wire Sum, Cout;

    fbosc1 fo1 (.y1(y1_b1), .y2(y2_b1), .clk(clk), .rst(rst));
    fbosc2 fo2 (.y1(y1_b2), .y2(y2_b2), .clk(clk), .rst(rst));
    fbosc3 fo3 (.y1(y1_nb), .y2(y2_nb), .clk(clk), .rst(rst));

    initial

    begin
    rst = 1'b1; #100;
    rst = 1'b0; #400;
    
    
    end


always //this will loop a clock and make it run infinitley. 
begin 
clk = 1'b0; #10;
clk = 1'b1; #10;
end 

endmodule