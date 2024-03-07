// Code for ripple_carry_adder
module fulladder
( input A,
input B,
input C_in,
output S, 
output C_out );
  wire p,r,s;
  xor (p,A,B);
  xor (S,p,C_in);
  and(r,p,C_in);
  and(s,A,B);
  or(C_out,r,s);
endmodule
module ripple_carry_adder(
  input[3:0] A,B,
  input C_in,
  output [3:0] S,
  output C_out);

  wire [2:0] carry;
  fulladder fa0(.A(A[0]),.B(B[0]),.C_in(C_in),.S(S[0]),.C_out(carry[0]));
  fulladder fa1(.A(A[1]),.B(B[1]),.C_in(carry[0]),.S(S[1]),.C_out(carry[1]));
  fulladder fa2(.A(A[2]),.B(B[2]),.C_in(carry[1]),.S(S[2]),.C_out(carry[2]));
  fulladder fa3(.A(A[3]),.B(B[3]),.C_in(carry[2]),.S(S[3]),.C_out(C_out));
endmodule
                                                    
