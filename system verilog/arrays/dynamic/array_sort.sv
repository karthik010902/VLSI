// Code your testbench here
// or browse Examples
module d_array;
  byte d[];
  
  initial begin
    
    d=new[10];
    d='{20,50,80,10,30,60,70,90,40};
    $display("*****************************************************");
    $display("\n\t array           : %0p",d);
    
    // with array method
    d.sort();
    $display("\n\t with sort()     : %0p",d);
    
  end
  
endmodule
