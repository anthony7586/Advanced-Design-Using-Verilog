`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anthony Ruiz
// 
// Create Date: 10/26/2022 03:24:31 PM
// Design Name: 
// Module Name: Sequence_Detector using moore FSM
// Project Name: sequence detector ("110")

// Description: 
/* 
        This program reads input data and ouputs output data '1' 
        when the sequence 110 is read in order.
        The program does this by utalizing a fintite state machine
 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
                        Sequence_Detector using Moore FSM
                                detecting "110"
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
*/

module Sequence_Detector_Moore_FSM(
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
    parameter s3 = 2'b11;
    
    
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
                s0: begin
                    if(data_in == 1'b0)
                    next_state = s0;
                    else
                    next_state = s1;
                    end 
                    
                s1: begin // assuming you already have "1xx"
                    if (data_in == 1'b0)
                    next_state = s0;
                    else          
                    next_state = s2;
                    end 
                    
                s2: begin  //assuming you allready have "11x"
                    if (data_in == 1'b0)
                    next_state = s3;
                    else 
                    next_state = s2;
                    end
                                        
                 s3: begin  //assuming you allready have "110"
                    if (data_in == 1'b0)
                    next_state = s0;
                    else 
                    next_state = s1;
                    end
                    
                    default: begin 
                    next_state = s0;
                    end 
             endcase 
       end   //end of always@(current_state or data_in)  
    
    
       always@(current_state)
            begin
                case(current_state)
                    s0: data_out <= 1'b0; // read first bit
                    s1: data_out <= 1'b0; // 1xx read bits
                    s2: data_out <= 1'b0; // 11x read bits 
                    s3: data_out <= 1'b1; // 110 read bits, correct sequence to data_out = 1
                    default: data_out <= 1'b0; //default data_out, s0 = default state 
                endcase 
            end
    
endmodule
