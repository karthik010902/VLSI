class rclass;
  randc bit[3:0] a;
  
  constraint cons{
    (a inside{[10:15]});
  }
  
endclass

module test;
  
  rclass c=new;
  
  initial begin
    
    for(byte i=0;i<6;i++)begin
      void'(c.randomize());
      $display("\n\t [%0d] --> a=%0d",i,c.a);
    end
    
  end
  
endmodule
