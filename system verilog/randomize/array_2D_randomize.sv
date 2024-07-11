class arrayclass;
  randc bit[3:0] a[2][4];
endclass

module array_randomize;
  arrayclass c=new;
  initial begin
    $display("\n\t b4 randomize = %0p",c.a);
    c.randomize();
    $display("\n\t after randomize = %0p",c.a);
  end
endmodule
    
 
    
