// 3D unpacked array
module ary();
  byte array[2][3][2];  
  
  initial
    begin
      
      foreach(array[i])
        foreach(array[i][j])
          foreach(array[i][j][k])
            begin
              array[i][j][k]=$unsigned($random)%100;                // this function used for +ve(0-100)
              $display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
          	end
      
      array[1][0][1]=100;                                      // assign values using indexing
      $display("array[1][0][1] =========>%0d",array[1][0][1]);
      $display("arrray -----> %p",array); 
    end
endmodule 
