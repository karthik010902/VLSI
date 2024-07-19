
class ivertclass;
  randc bit[3:0] v1;
  
  constraint consvalue{
    !(v1 inside{[5:15]});
  }
  
endclass

module inverted;
  ivertclass c=new;
  
  initial begin
    for(byte i=0;i<=5;i++)begin
      void'(c.randomize());
      $display("\n\t randomize iteration [%0d] --> %0d",i,c.v1);
    end
  end
  
endmodule
