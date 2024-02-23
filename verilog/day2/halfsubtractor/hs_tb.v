module hasub_tb;
  
  reg a,b;
  wire dif,bor;
  
  halfsub hs(a,b,dif,bor);
  
  initial begin
   
  
    $dumpfile("halfsub.vcd");
    $dumpvars(0,hasub_tb);
  
  end
  
  initial begin
    
    a=1'b0; b=1'b0;
    #10;
    
    a=1'b0; b=1'b1;
    #10;
    
    a=1'b1; b=1'b0;
    #10;
    
    a=1'b1; b=1'b1;
    #10;
    
    $finish;
     $monitor("time=%0t, a=%0b, b=%0b, dif=%0b, bor=%0b", $time, a, b, dif, bor); 
  end
  
endmodule
