// Code your design here
module allgate(input x,y, output a,b,c,d,e,f,g);
  or (a,x,y);
  and (b,x,y);
  not (c,x);
  nand (d,x,y);
  nor (e,x,y);
  xor (f,x,y);
  xnor (g,x,y);
endmodule
