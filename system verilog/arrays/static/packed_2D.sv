// 2D packed array
module ary();
  bit[0:3][0:7]array;  // 1st range is column | each column is 8bit size
  
  initial
    begin
      array=32'h8_2_3_4_5_6_7_8;   // assign value for total 32bits 
      $display("array value in binary  -----> %b",array);
      $display("array[3][5] = ",array[3][4]);  // print 3rd column 4bit position value
      for(int i=0;i<4;i++)
        $display("array[%0d] = %0h",i,array[i]);   // print each array column
    end
endmodule
