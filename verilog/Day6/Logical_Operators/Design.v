module logical_operators(
  input [4:1]a,b,c,d,
  output reg x);
  always @(*) begin
    begin
      if ((a==b)&&(c==b)) 
        x=1;                
      else
        x=!a;
      end
    begin
      if((a!=d)||(b==c))
        x=1;
    else
        x=0;
    end
  end
endmodule
