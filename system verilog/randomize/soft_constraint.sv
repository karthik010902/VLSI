// soft constraint
class randclass;
  randc bit[3:0]a;
  // we can override class constraint using soft keyword
  constraint cons{soft a>10;}
  
endclass

module softcons;
  randclass c=new;
  initial begin
   
    for(byte i=0;i<5;i++)begin
      void'(c.randomize()with{a==3;});
      $display("\n\t for1 [%0d] a=%0d",i,c.a);
    end
   $display;
    for(byte j=0;j<5;j++)begin
      void'(c.randomize()with{a==5;});
      $display("\n\t for2 [%0d] a=%0d",j,c.a);
    end
  
  end
endmodule
