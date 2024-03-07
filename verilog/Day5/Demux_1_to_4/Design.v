// Code for demux1by4
module demux1by4
  ( input s0,s1,i,
    output y0,y1,y2,y3);
    wire s0bar,s1bar;
  not(s0bar,s0),(s1bar,s1);
  and(y0,i,s0bar,s1bar);
  and(y1,i,s0bar,s1);
  and(y2,i,s0,s1bar);
  and(y3,i,s0,s1);
endmodule
