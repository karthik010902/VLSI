module sr_ff(
  input s,
  input r,
  input clk,
  output reg q,
  output qbar);
  initial
    q=0;
  always @(posedge clk or s or r)
    begin
      if(clk==0)
        q=q;
      
      else if(s==0 && r==0)
        q=q;
      else if(s==1 && r==1)
        q=1'bx;
      else 
        q=s;
    end
endmodule
