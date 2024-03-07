// Code your testbench here
// or browse Examples
module tb;
  reg x,y;
  wire a,b,c,d,e,f,g;
  
  allgate m1(x,y,a,b,c,d,e,f,g);
  
  initial 
    begin
      x=1'b0;y=1'b0;
      #10
      x=1'b0;y=1'b1;
      #20
      x=1'b1;y=1'b0;
      #30
      x=1'b1;y=1'b1;
      #40
      $finish;
    end
  
  initial 
    begin
      $dumpfile("allgate.vcd");
      $dumpvars(0,tb);
      $monitor("time=%0t, x=%0b, y=%0b, (or)a=%0b, (and)b=%0b, (not)c=%0b, (nand)d=%0b, (nor)e=%0b, (xor)f=%0b, (xnor)g=%0b",$time,x,y,a,b,c,d,e,f,g);
    end
endmodule
