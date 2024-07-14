
class randclass;
  randc bit[3:0]d_array[];
  
  constraint sizecons{
    d_array.size()<=6;
    d_array.size()>=4;
  }
  
  constraint valuecons{
    foreach(d_array[i])
      d_array[i] inside{[10:15]};
  }
  
endclass

module dynamic;
  randclass c=new;
  
  initial begin
    repeat(3)begin
    c.randomize();
      $display("\n\t after randomize = %0p",c.d_array);
    end
  end
endmodule

      
    
