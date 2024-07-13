
class randclass;
  rand bit[3:0] array[8];
  
  constraint cons{foreach(array[i]) array[i]<=5;}
  
endclass

module tb;
  randclass c=new;
  
  initial begin
    $display("\n\t before randomize = %0p",c.array);
    c.randomize();
    $display("\n\t after  randomize = %0p",c.array);
  end
  
endmodule
