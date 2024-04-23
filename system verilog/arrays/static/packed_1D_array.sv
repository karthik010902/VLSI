// packed 1D array 
module ary();
  bit[0:7]array; // 1D array or vector
  
  initial
    begin
      array=8'h99;
      $display("array value is ---> %0b",array);
      for(int i=0;i<$size(array);i++)
        $display("array[%0d]=%0b",i,array[i]);  // displaying array element using index
    end
endmodule
