module sr_latch(
  input s,
  input r,
  input en,
  output reg q,
  output qbar);
  initial
    q=0;
  always @(en or s or r)
    begin
      if(en==0)
        q=q;
      
      else if(s==0 && r==0)
        q=q;
      else if(s==1 && r==1)
        q=1'bx;
      else 
        q=s;
    end
  assign qbar=~q;
endmodule
