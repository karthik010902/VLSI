// Code your design here
module mux4x1(
  input i0,i1,i2,i3,s1,s2, //declar i/p
  output y);
  
  wire m1,m2; // declare internal connection
  
  mux2x1 mux1(.i0(i0), .i1(i1), .s(s2), .y(m1));  //port assigning for 2x1 mux
  mux2x1 mux2(.i0(i2), .i1(i3), .s(s2), .y(m2));
  mux2x1 mux3(.i0(m1), .i1(m2), .s(s1), .y(y));
  
endmodule
module mux2x1(
  input i0,i1,s,
  output y);
  
  wire n1,a1,a2;
  
  not nt1(n1,s);     // the 4 lines are mux logic operation
  and an1(a1,n1,i0);
  and an2(a2,s,i1);
  or r1(y,a1,a2);
endmodule

  
  
