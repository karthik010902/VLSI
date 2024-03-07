// Code for mux_2_to_1
module mux_2_to_1(
  input i0,i1,s,
  output y);
  wire a,b,c;
  not(a,s);
  and(b,i1,s);
  and(c,i0,a);
  or(y,b,c);
endmodule
