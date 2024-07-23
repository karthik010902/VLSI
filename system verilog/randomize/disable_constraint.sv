// Disable constraint
// constraint_mode(0) "OFF"
// constraint_mode(1) "ON"
class randclass;
  randc bit[3:0] a;
  
  constraint cons{a inside{2,5,8,13,15};}
  
endclass

module dis_cons;
  randclass c=new;
  
  initial begin
    c.cons.constraint_mode(0);
    $display("\n\t Constraint OFF");
    for(byte j=0;j<5;j++)begin
      void'(c.randomize());
      $display("\n\t [%0d] a=%0d",j,c.a);
    end
    
    c.cons.constraint_mode(1);
    $display("\n\t Constraint ON");
    // By default constraint is ON
    for(byte i=0; i<5; i++)begin
      void'(c.randomize());
      $display("\n\t [%0d] a=%0d",i,c.a);
    end
    
  end
endmodule
