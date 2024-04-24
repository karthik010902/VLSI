// 3D packed array
module ary();
  bit[0:3][0:1][0:3] array;  // 1st range is rows | 2nd range is column in each row | each cells 4bit size
  
  initial
    begin
      array=32'h88_77_44_22;   // assign value for total 32bits 
      $display("array value in binary  -----> %0h",array);
      $display("array[3][1] = ",array[3][1]);  // print 3rd row 1column | 4bit position value
      $display("array[2][1] = ",array[2][1]);
      for(int i=0;i<4;i++)
        $display("array[%0d] = %0h",i,array[i]);   // print each array row
    end
endmodule
