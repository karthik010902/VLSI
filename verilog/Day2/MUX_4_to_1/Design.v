// Code for mux_4_by_1
module mux_4_to_1(
  input s0,s1,i0,i1,i2,i3,
  output y);
  wire a,b,c,d,e,f;
  not(a,s0);
  not(b,s1);
  and(c,i0,a,b);
  and(d,i1,s1,a);
  and(e,i2,s0,b);
  and(f,i3,s0,s1);
  or(y,c,d,e,f);
endmodule
