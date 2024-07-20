class randclass;
  rand bit[3:0] a;
  rand bit[3:0] b;
  
  constraint cons{
    if(a inside{[5:10]}) 
      b==1;
    else
      b==0;
  }
  
endclass

module ifelse;
  randclass c=new;
  
  initial begin
    for(byte i=0; i<6; i++)begin
      void'(c.randomize());
      $display("\n\t iteration[%0d] --> a=%0d :: b=%0d",i,c.a,c.b);
    end
  end
  
endmodule
