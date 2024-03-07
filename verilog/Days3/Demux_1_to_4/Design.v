// Code for demux1by2
module demux1by2
  (input s,d,
   output y0,y1);
  wire sbar;
  not(sbar,s);
  and (y0,sbar,d),(y1,s,d);
endmodule
