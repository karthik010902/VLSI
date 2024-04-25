// 3D dynamic array
module test;
  int array[][][];                                              // 3D array declaration
  
  initial 
    begin
      array=new[2];                                             // assign size for 1st index
      foreach(array[i])
        begin
          array[i]=new[3];                                      // assign size for 2nd index
          foreach(array[i][j])
            array[i][j]=new[2];                                 // assign size for 3rd index
        end
      
      
      foreach(array[i])
        foreach(array[i][j])
          foreach(array[i][j][k])
            begin
              array[i][j][k]=$unsigned($random)%200;            // assign randomized values
              $display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
            end
      $display("***********************************************************************************");
      $display("array===>%p",array);
      array[0][0][0]=100;                                      // assign value using indexing                                   
      $display("array===>%p",array);
    end
endmodule
