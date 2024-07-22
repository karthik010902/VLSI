// Code your testbench here
// or browse Examples
class randclass;
  randc bit[3:0] v1;
  byte i;
  
  constraint cons{v1<5;}
  
  function void pre_randomize;
    if(i%2==0)begin
      rand_mode(0);
      $display("\n\t randomizing stop");
      i++;
    end
    
    else begin
      rand_mode(1);
      i++;
    end
    
  endfunction
  
endclass

module test;
  randclass c=new;
  
  initial begin
    for(byte i=0;i<=4;i++)begin
      $display("\n\t calling randomizing");
      void'(c.randomize());
      $display("\n\t value=%0d ",c.v1);
    end
    
  end
  
endmodule
