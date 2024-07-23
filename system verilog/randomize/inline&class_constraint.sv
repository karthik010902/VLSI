// inline constraint with class constraint
class randclass;
  randc bit[3:0]a;
  randc bit[3:0]b;
  
  constraint cons{a>10;b<5;}
  
endclass

module inline;
  randclass c=new;
  
  initial begin
    for(byte i=0;i<5;i++)begin
      // iteration 3 and 4 inline constraint exicuted
      if(i>2)begin
        void'(c.randomize() with{a==15;b==4;});
        $display("\n\t [%0d] inline randomize run --> a=%0d, b=%0d",i,c.a,c.b);  
      end
      // iteration 0-2 class constraint exicuted
      else begin
      void'(c.randomize());
      $display("\n\t [%0d] randomize run --> a=%0d, b=%0d",i,c.a,c.b);
      end
      
    end
  end
  
endmodule
      
