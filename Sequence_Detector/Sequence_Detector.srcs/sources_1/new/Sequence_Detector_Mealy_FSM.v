`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anthony Ruiz
// 
// Create Date: 10/26/2022 03:24:31 PM
// Design Name: 
// Module Name: Sequence_Detector using Mealy FSM
// Project Name: sequence detector ("110")

// Description: 
/* 
        This program reads input data and ouputs output data '1' 
        when the sequence 110 is read in order.
        The program does this by utalizing a fintite state machine
 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
                        Sequence_Detector using Mealy FSM
                                detecting "110"
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
*/


module Sequence_Detector_Mealy_FSM(
    input data_in,
    input clk,
    input reset,
    output reg data_out
    );
    
    reg [1:0] current_state;
    reg [1:0] next_state;
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    
     always@(posedge clk)
        begin
            if(reset == 1'b1)
             current_state <= s0;
            else
             current_state <= next_state;
        end
    
    
     always@(current_state or data_in)
        begin 
            case (current_state)       
                s0: //assuming you are reading the first bit in sequence
                    if(data_in == 1'b0) begin
                    next_state = s0;
                    data_out <= 1'b0;end
                    
                    else begin
                    next_state = s1;
                    data_out <= 1'b0;
                    end 
                    
                s1:  // assuming you already have "1xx"
                    if (data_in == 1'b0) begin //for bit 2
                    next_state = s0;
                    data_out <= 1'b0;end
                    
                    else begin          
                    next_state = s2;
                    data_out <= 1'b0;
                    end 
                    
                s2:   //assuming you allready have "11x"
                    if (data_in == 1'b0)begin //for the last bit
                    next_state = s0;
                    data_out <= 1'b1; end
                    
                    else begin
                    next_state = s2;
                    data_out <= 1'b0;
                    end
                                        
                default: begin
                        next_state =s0;
                        data_out <= 1'b0;
                         end 
                
                
            endcase 
         end
       
endmodule
