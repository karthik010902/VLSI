// 2D unpacked array
module ary();
  byte array[2][3];  // 1st range is rows | 2nd range is column in each row | each cell is 1byte size
  
  initial
    begin
      
      foreach(array[i])
        foreach(array[j][j])
          begin
            array[i][j]=$unsigned($random)%15;                // this function used for +ve(0-15)
            $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
          end
      
      array[0][0]=100;                                      // assign values using indexing
      $display("array[0][0] =========>%0d",array[0][0]);
      $display("arrray -----> %p",array); 
    end
endmodule 
