module halfadder(a,b,s,c); // module name and port initial
  
  input a,b;    // input declaration
  output s,c;    // output declaration
  
  xor xor1(s,a,b);  // set i/p & o/p for xor gate
  and and1(c,a,b);  // set i/p & o/p for and gate

endmodule   // end of the module
