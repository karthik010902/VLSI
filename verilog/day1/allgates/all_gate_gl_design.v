module allgates(a,b,c,d,e,f,g,h,i); // module name and port initial
  
  input a,b;               // input declaration
  output c,d,e,f,g,h,i;    // output declaration
  
  or or1(c,a,b);
  and and1(d,a,b);    // set i/p & o/p for and gate
  not not1(e,a);
  nand nand1(f,a,b);
  nor nor1(g,a,b);
  xor xor1(h,a,b);  // set i/p & o/p for xor gate
  xnor xnor1(i,a,b);
  
endmodule   // end of the module
