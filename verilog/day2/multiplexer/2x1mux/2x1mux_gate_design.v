module mux_2x1(
  
  input i0,i1,s,
  output y);
  
  wire a1,a2,n1;
  
  not not1(n1,s);
  and and1(a1,i0,n1);
  
  and and2(a2,i1,s);
  or or1(y,a1,a2);
  
endmodule
