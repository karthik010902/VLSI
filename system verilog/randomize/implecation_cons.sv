
class randclass;
  rand bit[3:0] a;
  rand bit[3:0]b;
  
  constraint cons{
    (a<10) -> (b>10);
  }
  
endclass

module test;
  randclass c=new;
  
  initial begin
    for(byte i=0;i<10;i++)begin
      void'(c.randomize());
      $display("\n\t iterate[%0t] --> a=%0d , b=%0d",i,c.a,c.b);
    end
  end
  
endmodule
