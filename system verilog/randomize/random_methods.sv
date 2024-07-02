
module randomize_method;
  byte a=$random();
  shortint b=$urandom_range(5000,2000);
  bit[3:0]c=$urandom();
  
  initial begin
    $display("*****************");
    $display("\n\t $random() = %0d",a);
    $display("\n\t $urandom(max,min) = %0d",b);
    $display("\n\t $urandom() = %0d",c);
    $display("\n********************");
  end
  
endmodule
    
