// 2D dynamic array
module test;
  int array[][]; // 2D array declaration
  
  initial 
    begin
      array=new[2];                                          // first assign size for rows
      foreach(array[i])
        array[i]=new[3];                                     // then assign size for each rows
      
      foreach(array[i])
        foreach(array[i][j])
          begin
            array[i][j]=$unsigned($random)%200;              // assig randomized values
            $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
          end
      $display("*****************************************");
      $display("\tarray===>%p",array);
      array[0][0]=100;
      $display("\tarray===>%p",array);
    end
endmodule
