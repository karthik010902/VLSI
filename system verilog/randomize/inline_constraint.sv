// inline constraint
class randclass;
  randc bit[3:0]a;
  randc bit[3:0]b;
  
endclass

module test;
  randclass c=new();
  
  initial begin
    for(byte i=0;i<=5;i++)begin
      // randomizing using inline constraint
      void'(c.randomize() with{a>10;b<5;});
      $display("\n\t [%0d] randomize run --> a=%0d , b=%0d",i,c.a,c.b);
    end
  end
  
endmodule
