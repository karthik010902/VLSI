// assertion similar to if else  statement
module tb;
  
  bit[3:0]a,b;
  
  initial begin

    for(bit[3:0] i=0;i<5;i++)
      begin
        a=$urandom;
        b=$urandom;
        assert(a>5 && b>5)
          $display("\n\t [%0d] assertion pass a=%0d b=%0d",i,a,b);
        else
          $display("\n\t [%0d] assertion failed : a=%0d b=%0d",i,a,b);
      end
    
  end
  
endmodule
        
  
