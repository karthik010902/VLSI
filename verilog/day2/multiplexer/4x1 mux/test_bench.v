// Code your testbench here
// or browse Examples
module mux4x1_tb;
  reg i0,i1,i2,i3,s1,s2;
  wire y;
  

  
  mux4x1 m(i0,i1,i2,i3,s1,s2,y);
 
  initial begin
        
    $dumpfile("mux4x1.vcd");
     $dumpvars(0,mux4x1_tb);
    
  end 
     
  initial begin
    s1=1'b0; s2=1'b0; i0=1'b1; i1=1'b0; i2=1'b1; i3=1'b0;
    #10
    
    s1=1'b0; s2=1'b1;
    #10
    
    s1=1'b1; s2=1'b0;
    #10
    
    s1=1'b1; s2=1'b1;
    #10
    
    $finish;
    
  end
  
  initial 
    $monitor("time=%0t, i0=%b, i1=%b, i2=%b, i3=%b, s1=%b, s2=%b, y=%b", $time, i0, i1, i2, i3, s1, s2, y);
  
endmodule

    
   
