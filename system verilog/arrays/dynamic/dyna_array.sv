// Dynamic array
module dynamic;
  int array[],stack[];                           // array declaration
  
  initial 
    begin
      array=new[3];                          // size declaration
      stack=new[4];
      
      foreach(array[i])
        begin
          array[i]=$unsigned($random)%500;    // assign randomized value for array
          $display("d1 array ---> %p",array);
        end
      
      foreach(stack[j])
        begin
          stack[j]=$unsigned($random)%800;     // assign randomized values for stack 
          $display("d  array ---> %p",stack);
        end
      
    end
endmodule
      
