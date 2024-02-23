module mux_tb;
  
  reg i0,i1,s;
  wire y;
  
  mux_2x1 m1(i0,i1,s,y);
  
  initial begin
   
  
    $dumpfile("mux_2x1.vcd");
    $dumpvars(0,mux_tb);
    $monitor("time=%0t, i0=%0b, i1=%0b, s=%0b, y=%0b", $time, i0, i1, s, y); 
  end
  
  initial begin
    
    i0=1'b0; i1=1'b1; s=1'b0;
    #10;
    s=1'b1;
    #10;
      
    $finish;
     
  end
  
endmodule
