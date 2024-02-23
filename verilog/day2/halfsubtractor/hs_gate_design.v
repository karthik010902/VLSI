module halfsub(a,b,dif,bor);
  
  input a,b;
  output dif,bor;
  
  wire a1;
  
  xor xor1(dif,a,b);
  not not1(a1,a);
  and and1(bor,a1,b);
  
endmodule
