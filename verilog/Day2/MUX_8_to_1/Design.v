// Code for mux8_1
module mux8_1(
  input D0,D1,D2,D3,D4,D5,D6,D7, 
  input s0,s1,s2,
  output Y);
wire inv0, inv1, inv2; // Inverter outputs.
wire a0, a1, a2, a3, a4, a5, a6, a7 ; // AND gates outputs.
  not  (inv0, s0); //// Inverters.
  not  (inv1, s1);
  not  (inv2, s2);
  and  (a0, inv2, inv1, inv0,D0); //// 3-input AND gates.
  and  (a0, inv2,inv1,inv0,D0);
  and  (a1, inv2,inv1,s0,D1);
  and  (a2, inv2, s1,inv0,D2);
  and  (a3, inv2, s1, s0,D3);
  and  (a4, s2, inv1, invs0,D4);
  and  (a5, s2, inv1, s0,D5);
  and  (a6, s2, s1, inv0,D6);
  and  (a7, s2, s1, s0,D7); 
  or   (Y, a0, a1, a2, a3, a4, a5, a6, a7);//// 8-input OR gate.
endmodule
  
