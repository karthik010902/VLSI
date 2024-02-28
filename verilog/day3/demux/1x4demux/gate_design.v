module dm1x2(ip,s,y0,y1);
  input ip,s;
  output y0,y1;
  wire x;
  
  not n1(x,s);
  and a1(y0,x,ip);
  and a2(y1,s,ip);
endmodule

module dm1x4(d,s0,s1,y0,y1,y2,y3);
  input d,s0,s1;
  output y0,y1,y2,y3;
  
  wire r1,r2;
  
  dm1x2 d1(.ip(d),.s(s0),.y0(r1),.y1(r2));
  dm1x2 d2(.ip(r1),.s(s1),.y0(y0),.y1(y1));
  dm1x2 d3(.ip(r2),.s(s1),.y0(y2),.y1(y3));
endmodule
 
