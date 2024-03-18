module mux8by1
  (input s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8,
   output y);
  wire s0bar,s1bar,s2bar,w1,w2,w3,w4,w5,w6,w7,w8;
  not(s0bar,s0);
  not(s1bar,s1);
  not(s2bar,s2);
  and(w1,i1,s0bar,s1bar,s2bar);
  and(w2,i2,s0bar,s1bar,s2);
  and(w3,i3,s0bar,s1,s2bar);
  and(w4,i4,s0bar,s1,s2);
  and(w5,i5,s0,s1bar,s2bar);
  and(w6,i6,s0,s1bar,s2);
  and(w7,i7,s0,s1,s2bar);
  and(w8,i8,s0,s1,s2);
  or(y,w1,w2,w3,w4,w5,w6,w7,w8);
endmodule
