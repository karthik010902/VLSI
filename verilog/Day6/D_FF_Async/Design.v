module dff_async(
  input d,clk,reset,
  output reg q);
  always @(posedge clk or negedge reset or d) //making output 0 in reset0
    if(reset==0)
      begin
        q <=1'b0;
      end
    else if(clk==1)
      begin
      q <=d;
    end
endmodule
