module demux1by8
  (input m,s0,s1,s2,
   output y1,y2,y3,y4,y5,y6,y7,y8);
  wire s0bar,s1bar,s2bar;
  not(s0bar,s0);
  not(s1bar,s1);
  not(s2bar,s2);
  and(y1,m,s0bar,s1bar,s2bar);
  and(y2,m,s0bar,s1bar,s2);
  and(y3,m,s0bar,s1,s2bar);
  and(y4,m,s0bar,s1,s2);
  and(y5,m,s0,s1bar,s2bar);
  and(y6,m,s0,s1bar,s2);
  and(y7,m,s0,s1,s2bar);
  and(y8,m,s0,s1,s2);
endmodule
