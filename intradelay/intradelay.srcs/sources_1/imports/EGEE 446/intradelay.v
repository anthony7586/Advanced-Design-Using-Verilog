`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anthony Ruiz
// 
// Create Date: 03/07/2022 07:41:42 PM
// Design Name: 
// Module Name: TB_interdelay
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////


module TB_intradelay(

    );

  reg  a, b, c, q;

  initial begin
    $monitor("[%0t] a=%0b b=%0b c=%0b q=%0b", $time, a, b, c, q);

    // Initialize all signals to 0 at time 0
    a <= 0;
    b <= 0;
    c <= 0;
    q <= 0;
    
    // Inter-assignment delay: Wait for #5 time units
    // and then assign a and c to 1. Note that 'a' and 'c'
    // gets updated at the end of current timestep
    #5  a <= 1;
    	c <= 1;

     // Intra-assignment delay: First execute the statement
    // then wait for 5 time units and then assign the evaluated
    // value to q
     q <= #5 a & b | c;
    
    #20;
  end

endmodule