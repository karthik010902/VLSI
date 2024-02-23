module halfsub(a,b,dif,bor);
  
  input a,b;
  output dif,bor;
  
  wire a1;
 
  xor xor1(dif,a,b);
  not not1(a1,a);
  and and1(bor,a1,b);
  
endmodule

module fullsub(a,b,bin,dout,bout);
  
  input a,b,bin;
  output dout,bout;
  
  wire d1,b1,b2;
  
  halfsub hs1(.a(a), .b(b), .dif(d1), .bor(b1));
  halfsub hs2(.a(d1), .b(bin), .dif(dout), .bor(b2));
  
  or or1(bout,b1,b2);
  
endmodule
