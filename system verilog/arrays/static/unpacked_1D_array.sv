// unpacked 1D array 
module ary();
  byte array[4]; // 1D array or vector | depth=4 , width - 8
  
  initial
    begin
      foreach(array[i])   // for using each element one by one
        begin
          array[i]=$random;
          $display("array[%0d]=%0d",i,array[i]);
        end
      $display("array=%0p",array);
    end
endmodule
