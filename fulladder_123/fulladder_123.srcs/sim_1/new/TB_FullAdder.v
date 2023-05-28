module TB_FullAdder(

    );
    
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Cout;


FullAdder FA1 (.A(A),
               .B(B),
               .Cin(Cin),
               .S(S),
               .Cout(Cout)
            );
    
initial 

  begin
  A = 1'b0; B =1'b0; Cin = 1'b0; #100 ;
  A = 1'b0; B =1'b0; Cin = 1'b1; #100 ;
  A = 1'b0; B =1'b1; Cin = 1'b0; #100 ;
  A = 1'b0; B =1'b1; Cin = 1'b1; #100 ;
  A = 1'b1; B = 1'b0; Cin = 1'b0; #100;
  A = 1'b1; B = 1'b0; Cin = 1'b1; #100;
  A = 1'b1; B = 1'b1; Cin = 1'b0; #100;
  A = 1'b1; B = 1'b1; Cin = 1'b1; #100; 
  end
endmodule
