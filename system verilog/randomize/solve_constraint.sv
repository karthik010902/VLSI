class without;
  rand bit a;
  rand bit[2:0] b;
  
  constraint cons{
    (a==1) -> (b==1);
  }
  
endclass

class with_;
  rand bit a;
  rand bit[2:0]b;
  
  constraint cons{
    (a==1) -> (b==1); solve a before b;
  }
  
endclass

module solve_cons;
  without c1=new;
  with_ c2=new;
  
  initial begin
    $display("\n\t --------------without solve---------------");
    for(byte i=1;i<10;i++)begin
      void'(c1.randomize());
      $display("\n\t iterate[%0d] --> a=%0d , b=%0d",i,c1.a,c1.b);
    end
    
    $display("\n\t --------------with solve   ---------------");
    for(byte j=1;j<=10;j++)begin
      void'(c2.randomize());
      $display("\n\t iterate[%0d] --> a=%0d , b=%0d",j,c2.a,c2.b);
    end
  end
  
endmodule
    
