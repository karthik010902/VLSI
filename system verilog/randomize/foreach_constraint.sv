class randclass;
  randc byte array1[1:10];
  randc byte array2[1:10];
  
  constraint cons{
    foreach (array1[i])
      array1[i]==i*2;
    foreach (array2[j])
      array2[j]==j*3;
  }
  
endclass

module test;
  randclass c=new;
  
  initial begin
    c.randomize();
    $display("\n\t array1= %0p , array2= %0p",c.array1,c.array2);
  end
  
endmodule
