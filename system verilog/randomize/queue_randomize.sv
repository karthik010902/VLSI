
class randclass;
  randc byte unsigned a[$];
  
  constraint size{a.size()==5;}
  
endclass

module queue;
  randclass r=new;
  
  initial begin
    for(byte i=0;i<5;i++)begin
      void'(r.randomize());
      $display("\n\t interation[%0d] queue randomize = %0p",i,r.a);
    end
  end
  
endmodule
