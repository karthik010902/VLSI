module fsub_tb;
  
  reg a,b,bin;
  wire dif,bor;
  
  fullsub hs(a,b,bin,dif,bor);
  
  initial begin
   
  
    $dumpfile("fullsub.vcd");
    $dumpvars(0,fsub_tb);
  $monitor("time=%0t, a=%0b, b=%0b, dif=%0b, bor=%0b", $time, a, b, dif, bor); 
  end
  
  initial begin
    
    a=1'b0; b=1'b0; bin=1'b0;
    #10;
    
    a=1'b0; b=1'b0; bin=1'b1;
    #10;
    
    a=1'b0; b=1'b1; bin=1'b0;
    #10;
    
    a=1'b0; b=1'b1; bin=1'b1;
    #10;
    
     a=1'b1; b=1'b0; bin=1'b0;
    #10;
    
     a=1'b1; b=1'b0; bin=1'b1;
    #10;
    
     a=1'b1; b=1'b1; bin=1'b0;
    #10;
    
     a=1'b1; b=1'b1; bin=1'b1;
    #10;
    
    $finish;
     
  end
  
endmodule
