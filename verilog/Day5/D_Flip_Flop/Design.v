//code_for_d_flip_flop
module dff_async_reset(
  input data, clk, reset, 
  output q);
  reg q;
  
  always @( posedge clk or  reset)
    begin
      if (!reset) 
        q<=data;
      else if(reset)
        q<=1'b0;
    end
   endmodule
